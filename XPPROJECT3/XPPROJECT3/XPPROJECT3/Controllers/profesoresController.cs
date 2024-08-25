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
    public class profesoresController : Controller
    {
        private db_aabd33_ctpmqstestEntities db = new db_aabd33_ctpmqstestEntities();

        // GET: profesores
        public ActionResult Index()
        {
            return View(db.profesoress.ToList());
        }

        // GET: profesores/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            profesoress profesoress = db.profesoress.Find(id);
            if (profesoress == null)
            {
                return HttpNotFound();
            }
            return View(profesoress);
        }

        // GET: profesores/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: profesores/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_profesor,nombre")] profesoress profesoress)
        {
            if (ModelState.IsValid)
            {
                db.profesoress.Add(profesoress);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(profesoress);
        }

        // GET: profesores/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            profesoress profesoress = db.profesoress.Find(id);
            if (profesoress == null)
            {
                return HttpNotFound();
            }
            return View(profesoress);
        }

        // POST: profesores/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_profesor,nombre")] profesoress profesoress)
        {
            if (ModelState.IsValid)
            {
                db.Entry(profesoress).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(profesoress);
        }

        // GET: profesores/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            profesoress profesoress = db.profesoress.Find(id);
            if (profesoress == null)
            {
                return HttpNotFound();
            }
            return View(profesoress);
        }

        // POST: profesores/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            profesoress profesoress = db.profesoress.Find(id);
            db.profesoress.Remove(profesoress);
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
