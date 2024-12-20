﻿using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDT.Models;
using WebDT.Models.EF;

namespace WebDT.Controllers
{
    public class TimKiemController : Controller
    {
        WebMayTinhEntities _db = new WebMayTinhEntities();
        public JsonResult GetSearchValue(string search)
        {
            List<Timkiem> allsearch = _db.Products.Where(p => p.name.Contains(search)).Select(p => new Timkiem
            {
                id = p.id,
                name = p.name

            }).ToList();
            return new JsonResult { Data = allsearch, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
        // GET: Search
        [HttpPost]
        public ActionResult getTimKiem(FormCollection collection, int? page, string sortSearch)
        {

            string sTukhoa = collection["txtTimkiem"].ToString();
            IQueryable<Product> query = _db.Products.Where(p => p.name.Contains(sTukhoa));

            TimKiemStrategy timKiemStrategy = getTimKiemStrategy(sortSearch);

            query = timKiemStrategy.Search(query, sTukhoa);
            //var lstSanPham = (from sp in _db.Products
            //                  where sp.name.Contains(sTukhoa)
            //                  select sp).ToList();
            List<Product> lstSanPham = query.ToList();

            if (lstSanPham != null && lstSanPham.Count() <= 0)
            {
                ViewBag.Thongbao = "Không tìm thấy sản phẩm nào";
            }
           
            int pageNumber = (page ?? 1);
            int pageSize = 8;

            
            return View(lstSanPham.OrderBy(m => m.name).ToPagedList(pageNumber, pageSize));
        }

        private TimKiemStrategy getTimKiemStrategy(string sortSearch)
        {
            switch(sortSearch)
            {
                case "name":
                    return new TimKiemNaneStrategy();
                case "price":
                    return new TimKiemGiaStrategy();
                default:
                    return new TimKiemNaneStrategy();         
            }
        }
    }
}