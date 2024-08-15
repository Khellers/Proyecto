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
    public class estudiantesController : Controller
    {
        private db_aabd33_ctpmqstestEntities db = new db_aabd33_ctpmqstestEntities();

        // GET: estudiantes
        public ActionResult Index()
        {
            var estudiantes = db.estudiantes.Include(e => e.especialidades);
            return View(estudiantes.ToList());
        }

        // GET: estudiantes/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            estudiantes estudiantes = db.estudiantes.Find(id);
            if (estudiantes == null)
            {
                return HttpNotFound();
            }
            return View(estudiantes);
        }

        // GET: estudiantes/Create
        public ActionResult Create()
        {
            ViewBag.especialidad = new SelectList(db.especialidades, "IdEspecialidades", "NombreEspecialidad");
            return View();
        }

        // POST: estudiantes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "cedula,nombre,primer_apellido,segundo_apellido,especialidad,CelularE,CorreoE,Nombre_Encargado,Apellido_Encargado,Apellido2_Encargado,Numero_Encargado,Correo_Encargado,tipoEstudiante")] estudiantes estudiantes)
        {
            if (ModelState.IsValid)
            {
                db.estudiantes.Add(estudiantes);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.especialidad = new SelectList(db.especialidades, "IdEspecialidades", "NombreEspecialidad", estudiantes.especialidad);
            return View(estudiantes);
        }

        // GET: estudiantes/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            estudiantes estudiantes = db.estudiantes.Find(id);
            if (estudiantes == null)
            {
                return HttpNotFound();
            }
            ViewBag.especialidad = new SelectList(db.especialidades, "IdEspecialidades", "NombreEspecialidad", estudiantes.especialidad);
            return View(estudiantes);
        }

        // POST: estudiantes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "cedula,nombre,primer_apellido,segundo_apellido,especialidad,CelularE,CorreoE,Nombre_Encargado,Apellido_Encargado,Apellido2_Encargado,Numero_Encargado,Correo_Encargado,tipoEstudiante")] estudiantes estudiantes)
        {
            if (ModelState.IsValid)
            {
                db.Entry(estudiantes).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.especialidad = new SelectList(db.especialidades, "IdEspecialidades", "NombreEspecialidad", estudiantes.especialidad);
            return View(estudiantes);
        }

        // GET: estudiantes/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            estudiantes estudiantes = db.estudiantes.Find(id);
            if (estudiantes == null)
            {
                return HttpNotFound();
            }
            return View(estudiantes);
        }

        // POST: estudiantes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            estudiantes estudiantes = db.estudiantes.Find(id);
            db.estudiantes.Remove(estudiantes);
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
