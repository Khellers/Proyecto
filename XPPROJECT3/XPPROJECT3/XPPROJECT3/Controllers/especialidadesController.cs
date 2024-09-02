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
    public class especialidadesController : Controller
    {
        private db_aabd33_ctpmqstestEntities db = new db_aabd33_ctpmqstestEntities();

        // GET: especialidades
        public ActionResult Index()
        {
            return View(db.especialidades.ToList());
        }

        // GET: especialidades/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            especialidades especialidades = db.especialidades.Find(id);
            if (especialidades == null)
            {
                return HttpNotFound();
            }
            return View(especialidades);
        }

        // GET: especialidades/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: especialidades/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdEspecialidades,NombreEspecialidad")] especialidades especialidades)
        {
            if (ModelState.IsValid)
            {
                db.especialidades.Add(especialidades);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(especialidades);
        }

        // GET: especialidades/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            especialidades especialidades = db.especialidades.Find(id);
            if (especialidades == null)
            {
                return HttpNotFound();
            }
            return View(especialidades);
        }

        // POST: especialidades/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdEspecialidades,NombreEspecialidad")] especialidades especialidades)
        {
            if (ModelState.IsValid)
            {
                db.Entry(especialidades).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(especialidades);
        }

        // GET: especialidades/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            especialidades especialidades = db.especialidades.Find(id);
            if (especialidades == null)
            {
                return HttpNotFound();
            }
            return View(especialidades);
        }

        // POST: especialidades/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            especialidades especialidades = db.especialidades.Find(id);
            db.especialidades.Remove(especialidades);
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
