using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDT.Models.EF;

namespace WebDT.Models
{
    public class TimKiemNaneStrategy : TimKiemStrategy
    {
        public IQueryable<Product> Search(IQueryable<Product> products, string keyword)
        {
            return products.Where(p => p.name.Contains(keyword));
        }
    }
}