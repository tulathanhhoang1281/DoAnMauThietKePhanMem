using PagedList;
using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using WebDT.Models.EF;
namespace WebDT.Models
{
    public sealed class ProductSingleton
    {
        public static ProductSingleton Instance { get; set; } = new ProductSingleton();
        public List<Product> listProducts { get; } = new List<Product>();

        private ProductSingleton() { }

        public void Init(WebMayTinhEntities db, int page = 1, int pagesize = 10)
        {
            if (listProducts.Count == 0)
            {
                var products = db.Products.OrderBy(x => x.order).ToPagedList(page, pagesize);
                foreach (var product in products)
                {
                    // Convert each Product entity to a ProductModel instance
                    var productModel = new Product
                    {
                        id = product.id,
                        name = product.name,
                        price = product.price,
                        newprice = product.newprice,
                        img = product.img,
                        description = product.description,
                        meta = product.meta,
                        hdie = product.hdie,
                        order = product.order,
                        datebegin = product.datebegin,
                        categoryid = product.categoryid
                        //SoLuong = product.SoLuong,
                        //category = product.category
                    };

                    // Add the ProductModel instance to the list
                    listProducts.Add(productModel);
                }
            }
                
        }
    }
}