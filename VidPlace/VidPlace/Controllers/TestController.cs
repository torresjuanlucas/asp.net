using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VidPlace.Controllers
{
    public class TestController : Controller
    {
        // GET: Test
        public ActionResult Index()
        {
            return View();
        }

        // Get getString
        public string getString()
        {
            return "Hello world, Welcome to  MVC";
        }

       


        // get view
        public ActionResult GetView()
        {
            return View("MyView");
        }

        // get view
        public ActionResult GetOtherView()
        {
            return View("MyOtherView");
        }

        // get view
        public ActionResult GetDeveloper()
        {
            return View("Developer");
        }
    }

 
}