using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QuickFood.Models;

namespace QuickFood.Controllers
{
    public class livreursController : Controller
    {
        private base_quickEntities8 db = new base_quickEntities8();

        // GET: livreurs
        public ActionResult Index()
        {
            return View(db.livreur.ToList());
        }

        // GET: livreurs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            livreur livreur = db.livreur.Find(id);
            if (livreur == null)
            {
                return HttpNotFound();
            }
            return View(livreur);
        }

        // GET: livreurs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: livreurs/Create
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_liv,nom_liv,tel_liv")] livreur livreur)
        {
            if (ModelState.IsValid)
            {
                db.livreur.Add(livreur);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(livreur);
        }

        // GET: livreurs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            livreur livreur = db.livreur.Find(id);
            if (livreur == null)
            {
                return HttpNotFound();
            }
            return View(livreur);
        }

        // POST: livreurs/Edit/5
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_liv,nom_liv,tel_liv")] livreur livreur)
        {
            if (ModelState.IsValid)
            {
                db.Entry(livreur).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(livreur);
        }

        // GET: livreurs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            livreur livreur = db.livreur.Find(id);
            if (livreur == null)
            {
                return HttpNotFound();
            }
            return View(livreur);
        }

        // POST: livreurs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            livreur livreur = db.livreur.Find(id);
            db.livreur.Remove(livreur);
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
