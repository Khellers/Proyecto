using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using XPPROJECT3;

namespace XPPROJECT3.Controllers
{
    public class materiasController : Controller
    {
        private db_aabd33_ctpmqstestEntities db = new db_aabd33_ctpmqstestEntities();

        // GET: materias
        public ActionResult Index()
        {
            var materias = db.materias.Include(m => m.departamentos).Include(m => m.especialidades);
            return View(materias.ToList());
        }

        // GET: materias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            materias materias = db.materias.Find(id);
            if (materias == null)
            {
                return HttpNotFound();
            }
            return View(materias);
        }

        // GET: materias/Create
        public ActionResult Create()
        {
            ViewBag.Departamento = new SelectList(db.departamentos, "IdDepartamento", "NombreDepartamento");
            ViewBag.Especialidad = new SelectList(db.especialidades, "IdEspecialidades", "NombreEspecialidad");
            return View();
        }

        // POST: materias/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdMateria,Nombre,Departamento,Especialidad")] materias materias)
        {
            if (ModelState.IsValid)
            {
                db.materias.Add(materias);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Departamento = new SelectList(db.departamentos, "IdDepartamento", "NombreDepartamento", materias.Departamento);
            ViewBag.Especialidad = new SelectList(db.especialidades, "IdEspecialidades", "NombreEspecialidad", materias.Especialidad);
            return View(materias);
        }

        // GET: materias/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            materias materias = db.materias.Find(id);
            if (materias == null)
            {
                return HttpNotFound();
            }
            ViewBag.Departamento = new SelectList(db.departamentos, "IdDepartamento", "NombreDepartamento", materias.Departamento);
            ViewBag.Especialidad = new SelectList(db.especialidades, "IdEspecialidades", "NombreEspecialidad", materias.Especialidad);
            return View(materias);
        }

        // POST: materias/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdMateria,Nombre,Departamento,Especialidad")] materias materias)
        {
            if (ModelState.IsValid)
            {
                db.Entry(materias).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Departamento = new SelectList(db.departamentos, "IdDepartamento", "NombreDepartamento", materias.Departamento);
            ViewBag.Especialidad = new SelectList(db.especialidades, "IdEspecialidades", "NombreEspecialidad", materias.Especialidad);
            return View(materias);
        }

        // GET: materias/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            materias materias = db.materias.Find(id);
            if (materias == null)
            {
                return HttpNotFound();
            }
            return View(materias);
        }

        // POST: materias/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            materias materias = db.materias.Find(id);
            db.materias.Remove(materias);
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
