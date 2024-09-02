using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using XPPROJECT3.Models;
using XPPROJECT3;

namespace horario100.Controllers
{
    public class ClasesController : Controller
    {
        private db_aabd33_ctpmqstestEntities db = new db_aabd33_ctpmqstestEntities();

        private List<string> seccionesOrdenadas = new List<string>
        {
            "7-1", "7-2", "7-3", "7-4", "7-5", "7-6", "7-7", "8-1", "8-2", "8-3", "8-4", "8-5", "8-6", ".8-7",
            "9-1", "9-2", "9-3", "9-4", "9-5", "9-6", "9-7", "10-1", "10-2", "10-3", "10-4", "10-5", "10-6",
            "10-7A", "10-7B", "10-8A", "10-8B", "10-9A", "10-9B", "10-10A", "10-10B", "11-1", "11-2", "11-3",
            "11-4", "11-5 A", "11-5 B", "11-6 A", "11-6 B", "11-7 A", "11-7 B", "11-8 A", "11-8 B", "11-9 A",
            "11-9 B", "12-1", "12-2A", "12-2B", "12-3", "12-4A", "12-4B", "12-5A", "12-5B", "12-6A", "12-6B",
            "12-7A", "12-7B"
        };

        // GET: Clases
        public ActionResult Index(int? profesorId = null)
        {
            var query = @"
                SELECT
                    c.id AS ClaseID,
                    c.dia AS Dia,
                    c.hora_inicio AS HoraInicio,
                    c.hora_fin AS HoraFin,
                    m.Nombre AS NombreMateria,
                    d.NombreDepartamento AS NombreDepartamento,
                    e.NombreEspecialidad AS NombreEspecialidad,
                    c.profesor AS ProfesorID,
                    c.aula AS Aula,
                    c.seccion AS Seccion
                FROM
                    clase c
                LEFT JOIN
                    materias m ON c.asignatura = m.IdMateria
                LEFT JOIN
                    departamentos d ON m.Departamento = d.IdDepartamento
                LEFT JOIN
                    especialidades e ON m.Especialidad = e.IdEspecialidades";
            var clases = db.Database.SqlQuery<ClaseViewModel>(query).AsEnumerable().ToList();

            var horarios = clases.GroupBy(c => c.Seccion)
                                 .ToDictionary(g => g.Key, g => g.ToList());
            var horariosOrdenados = seccionesOrdenadas
                                    .Where(seccion => horarios.ContainsKey(seccion))
                                    .ToDictionary(seccion => seccion, seccion => horarios[seccion]);

            var profesores = db.profesoress.Select(p => new ProfesorViewModel
            {
                Id = p.id_profesor,
                Nombre = p.nombre
            }).ToList();

            var horariosProfesores = new Dictionary<int, List<ClaseViewModel>>();
            foreach (var profesor in profesores)
            {
                horariosProfesores[profesor.Id] = clases.Where(c => c.ProfesorID == profesor.Id).ToList();
            }

            ViewBag.Horas = new List<string>
            {
                "7:00 - 7:40", "7:40 - 8:20", "8:20 - 9:00", "9:20 - 10:00",
                "10:00 - 10:40", "10:40 - 11:20", "12:10 - 12:50", "12:50 - 1:30",
                "1:30 - 2:10", "2:30 - 3:10", "3:10 - 3:50", "3:50 - 4:30"
            };
            ViewBag.Dias = new List<string> { "Lunes", "Martes", "Miércoles", "Jueves", "Viernes" };

            return View(new HorariosViewModel
            {
                HorarioGeneral = horariosOrdenados,
                HorariosProfesores = horariosProfesores,
                Profesores = profesores,
                ProfesorSeleccionadoId = profesorId
            });
        }

        // GET: Clases/Details/5
        public ActionResult Details(int? id, string seccion)
        {
            if (id == null || string.IsNullOrEmpty(seccion))
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            clase clase = db.clase.Find(id, seccion);
            if (clase == null)
            {
                return HttpNotFound();
            }
            return View(clase);
        }

        // GET: Clases/Create
        [Authorize(Roles = "admin")]
        public ActionResult Create()
        {
            ViewBag.asignatura = new SelectList(db.materias, "IdMateria", "Nombre");
            ViewBag.profesor = new SelectList(db.profesoress, "id_profesor", "nombre");
            return View();
        }

        // POST: Clases/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,dia,hora_inicio,hora_fin,asignatura,aula,profesor,seccion")] clase clase)
        {
            if (ModelState.IsValid)
            {
                db.clase.Add(clase);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.asignatura = new SelectList(db.materias, "IdMateria", "Nombre", clase.asignatura);
            ViewBag.profesor = new SelectList(db.profesoress, "id_profesor", "nombre", clase.profesor);
            return View(clase);
        }

        // GET: Clases/Edit/5
        [Authorize(Roles = "admin")]
        public ActionResult Edit(int? id, string seccion)
        {
            if (id == null || string.IsNullOrEmpty(seccion))
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            clase clase = db.clase.Find(id, seccion);
            if (clase == null)
            {
                return HttpNotFound();
            }
            ViewBag.asignatura = new SelectList(db.materias, "IdMateria", "Nombre", clase.asignatura);
            ViewBag.profesor = new SelectList(db.profesoress, "id_profesor", "nombre", clase.profesor);
            return View(clase);
        }

        // POST: Clases/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,dia,hora_inicio,hora_fin,asignatura,aula,profesor,seccion")] clase clase)
        {
            if (ModelState.IsValid)
            {
                db.Entry(clase).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.asignatura = new SelectList(db.materias, "IdMateria", "Nombre", clase.asignatura);
            ViewBag.profesor = new SelectList(db.profesoress, "id_profesor", "nombre", clase.profesor);
            return View(clase);
        }

        // GET: Clases/Delete/5
        [Authorize(Roles = "admin")]
        public ActionResult Delete(int? id, string seccion)
        {
            if (id == null || string.IsNullOrEmpty(seccion))
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            clase clase = db.clase.Find(id, seccion);
            if (clase == null)
            {
                return HttpNotFound();
            }
            return View(clase);
        }

        // POST: Clases/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id, string seccion)
        {
            clase clase = db.clase.Find(id, seccion);
            db.clase.Remove(clase);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}