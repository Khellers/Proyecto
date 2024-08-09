using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using horarios;

namespace horarios.Controllers
{
    public class ClasesController : Controller
    {
        private horario_escolarEntities db = new horario_escolarEntities();

        // GET: Clases
        public ActionResult Index()
        {
            var secciones = new List<string> { "7-1", "7-2", "7-3" , "7-4", "7-5", "7-6", "7-7", "8-1", "8-2", "8-3", "8-4","8-5","8-6","8-7","9-1", "9-2", "9-3", "9-4", "9-5", "9-6", "9-7", "10-1", "10-2", "10-3", "10-4", "10-5", "10-6", "10-7A","10-7B", "10-8A", "10-8B", "10-9A", "10-9B", "10-10A", "10-10B", "11-1", "11-2", "11-3", "11-4", "11-5 A", "11-5 B", "11-6 A", "11-6 B", "11-7 A", "11-7 B", "11-8 A", "11-8 B", "11-9 A", "11-9 B", "12-1", "12-2A", "12-2B", "12-3", "12-4A", "12-4B", "12-5A", "12-5B", "12-6A", "12-6B", "12-7A", "12-7B" };
            var horarios = new Dictionary<string, List<clases>>();

            foreach (var seccion in secciones)
            {
                horarios[seccion] = db.clases.Where(c => c.seccion == seccion).ToList();
            }

            ViewBag.Horas = new List<string>
            {
                "7:00 - 7:40", "7:40 - 8:20", "8:20 - 9:00", "9:20 - 10:00",
                "10:00 - 10:40", "10:40 - 11:20", "12:10 - 12:50", "12:50 - 1:30",
                "1:30 - 2:10", "2:30 - 3:10", "3:10 - 3:50", "3:50 - 4:30"
            };

            ViewBag.Dias = new List<string> { "Lunes", "Martes", "Miércoles", "Jueves", "Viernes" };

            return View(horarios);
        }

        // GET: Clases/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            clases clase = db.clases.Find(id);
            if (clase == null)
            {
                return HttpNotFound();
            }
            return View(clase);
        }

        // GET: Clases/Create
        public ActionResult Create()
        {
            ViewBag.profesor = new SelectList(db.profesoress, "id_profesor", "nombre");
            return View();
        }

        // POST: Clases/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,dia,hora_inicio,hora_fin,asignatura,aula,profesor,seccion")] clases clase)
        {
            if (ModelState.IsValid)
            {
                db.clases.Add(clase);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.profesor = new SelectList(db.profesoress, "id_profesor", "nombre", clase.profesor);
            return View(clase);
        }

        // GET: Clases/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            clases clase = db.clases.Find(id);
            if (clase == null)
            {
                return HttpNotFound();
            }
            ViewBag.profesor = new SelectList(db.profesoress, "id_profesor", "nombre", clase.profesor);
            return View(clase);
        }

        // POST: Clases/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,dia,hora_inicio,hora_fin,asignatura,aula,profesor,seccion")] clases clase)
        {
            if (ModelState.IsValid)
            {
                db.Entry(clase).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.profesor = new SelectList(db.profesoress, "id_profesor", "nombre", clase.profesor);
            return View(clase);
        }

        // GET: Clases/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            clases clase = db.clases.Find(id);
            if (clase == null)
            {
                return HttpNotFound();
            }
            return View(clase);
        }

        // POST: Clases/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            clases clase = db.clases.Find(id);
            db.clases.Remove(clase);
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