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
    public class SeccionsController : Controller
    {
        private db_aabd33_ctpmqstestEntities db = new db_aabd33_ctpmqstestEntities();

        // GET: Seccions


        public ActionResult Index()
        {
            var secciones = db.Seccion
                .Include(s => s.estudiantes)
                .Include(s => s.profesoress)
                .ToList();

            var groupedSecciones = secciones
                .GroupBy(s => s.IdSeccion)
                .Select(g => new SeccionViewModel
                {
                    Seccion = g.FirstOrDefault().Secciones.Seccion,
                    Estudiantes = g.ToList(),
                    Profesor = g.FirstOrDefault().profesoress.nombre
                }).ToList();

            return View(groupedSecciones);
        }




        // GET: Seccions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Seccion seccion = db.Seccion.Find(id);
            if (seccion == null)
            {
                return HttpNotFound();
            }
            return View(seccion);
        }

        // GET: Seccions/Create
        public ActionResult Create()
        {
            ViewBag.cedula = new SelectList(db.estudiantes, "cedula", "nombre");
            ViewBag.ProfesorGuia = new SelectList(db.profesoress, "id_profesor", "nombre");
            ViewBag.IdSeccion = new SelectList(db.Secciones, "Id", "Seccion");
            return View();
        }

        // POST: Seccions/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdSeccion,cedula,ProfesorGuia,año")] Seccion seccion)
        {
            if (ModelState.IsValid)
            {
                db.Seccion.Add(seccion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.cedula = new SelectList(db.estudiantes, "cedula", "nombre", seccion.cedula);
            ViewBag.ProfesorGuia = new SelectList(db.profesoress, "id_profesor", "nombre", seccion.ProfesorGuia);
            ViewBag.IdSeccion = new SelectList(db.Secciones, "Id", "Seccion", seccion.IdSeccion);
            return View(seccion);
        }

        // GET: Seccions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Seccion seccion = db.Seccion.Find(id);
            if (seccion == null)
            {
                return HttpNotFound();
            }
            ViewBag.cedula = new SelectList(db.estudiantes, "cedula", "nombre", seccion.cedula);
            ViewBag.ProfesorGuia = new SelectList(db.profesoress, "id_profesor", "nombre", seccion.ProfesorGuia);
            ViewBag.IdSeccion = new SelectList(db.Secciones, "Id", "Seccion", seccion.IdSeccion);
            return View(seccion);
        }

        // POST: Seccions/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdSeccion,cedula,ProfesorGuia,año")] Seccion seccion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(seccion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.cedula = new SelectList(db.estudiantes, "cedula", "nombre", seccion.cedula);
            ViewBag.ProfesorGuia = new SelectList(db.profesoress, "id_profesor", "nombre", seccion.ProfesorGuia);
            ViewBag.IdSeccion = new SelectList(db.Secciones, "Id", "Seccion", seccion.IdSeccion);
            return View(seccion);
        }

        // GET: Seccions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Seccion seccion = db.Seccion.Find(id);
            if (seccion == null)
            {
                return HttpNotFound();
            }
            return View(seccion);
        }

        // POST: Seccions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Seccion seccion = db.Seccion.Find(id);
            db.Seccion.Remove(seccion);
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
