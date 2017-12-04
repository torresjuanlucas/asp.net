using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VidPlace.Models;

namespace VidPlace.Controllers
{
    public class MediasController : Controller
    {
        // GET: Medias
        public ActionResult Random()
        {
            var media = new Media();
            media.Name = "Jurasic Park";
           
            return View(media);
        }

        public ActionResult ActionResultDemo()
        {
            // return Content("Hello World");
            // return HttpNotFound();
            //return new EmptyResult();
            //return RedirectToAction("getCustomer", "test");

            // Query string!!! (use a lot!)
            return RedirectToAction("Random", "Medias", new { userName = "alex123"});
        }

        public ActionResult edit(int mediaId)
        {
            return Content("Provide ID = " + mediaId);
        }

        public ActionResult index(int pageIndex, string sortBy)
        {
            return Content("Page Number = " + pageIndex + " Sort By: " + sortBy);
        }
    }
}