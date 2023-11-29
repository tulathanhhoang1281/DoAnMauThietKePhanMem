using PagedList;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebDT.Models;
using WebDT.Models.EF;
namespace WebDT.Controllers
{
    public abstract class ControllerTemplateMethod : Controller
    {
        protected abstract void PrintRoutes();
        protected abstract void PrintDIs();

        public void PrintInfomation()
        {
            PrintRoutes();
            PrintDIs();
        }


        //// GET: ControllerTemplateMethod
        //public ActionResult Index()
        //{
        //    return View();
        //}
    }
}