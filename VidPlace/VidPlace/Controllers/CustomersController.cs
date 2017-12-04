using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VidPlace.Models;

namespace VidPlace.Controllers
{
    public class CustomersController : Controller
    {
        // GET: Customers
        public ActionResult Customer()
        {
            var c = new Customer();

            c.Name = "Lucas";

            c.Address = "Montreal";

            return View(c);
        }
    }
}