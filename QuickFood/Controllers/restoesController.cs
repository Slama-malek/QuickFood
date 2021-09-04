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
    public class restoesController : Controller
    {
        private base_quickEntities8 db = new base_quickEntities8();

        // GET: restoes
        public ActionResult Index()
        {
            var resto = db.resto.Include(r => r.specialite);
            return View(resto.ToList());
        }

        // GET: restoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            resto resto = db.resto.Find(id);
            if (resto == null)
            {
                return HttpNotFound();
            }
            return View(resto);
        }

        // GET: restoes/Create
        public ActionResult Create()
        {
            ViewBag.id_sp = new SelectList(db.specialite, "id_sp", "nom_sp");
            return View();
        }

        // POST: restoes/Create
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_resto,nom_resto,tel_resto,adr_resto,description,fourchette,id_sp")] resto resto)
        {
            if (ModelState.IsValid)
            {
                db.resto.Add(resto);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_sp = new SelectList(db.specialite, "id_sp", "nom_sp", resto.id_sp);
            return View(resto);
        }

        // GET: restoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            resto resto = db.resto.Find(id);
            if (resto == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_sp = new SelectList(db.specialite, "id_sp", "nom_sp", resto.id_sp);
            return View(resto);
        }

        // POST: restoes/Edit/5
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_resto,nom_resto,tel_resto,adr_resto,description,fourchette,id_sp")] resto resto)
        {
            if (ModelState.IsValid)
            {
                db.Entry(resto).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_sp = new SelectList(db.specialite, "id_sp", "nom_sp", resto.id_sp);
            return View(resto);
        }

        // GET: restoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            resto resto = db.resto.Find(id);
            if (resto == null)
            {
                return HttpNotFound();
            }
            return View(resto);
        }

        // POST: restoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            resto resto = db.resto.Find(id);
            db.resto.Remove(resto);
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
