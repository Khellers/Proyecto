using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using horarios;

namespace horarios.Controllers
{
    public class profesoressController : Controller
    {
        private horario_escolarEntities db = new horario_escolarEntities();

        // GET: profesoress
        public ActionResult Index()
        {
            return View(db.profesoress.ToList());
        }

        // GET: profesoress/Details/5
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

        // GET: profesoress/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: profesoress/Create
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

        // GET: profesoress/Edit/5
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

        // POST: profesoress/Edit/5
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

        // GET: profesoress/Delete/5
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

        // POST: profesoress/Delete/5
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
