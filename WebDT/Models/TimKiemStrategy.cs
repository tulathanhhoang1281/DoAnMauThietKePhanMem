using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebDT.Models.EF;

namespace WebDT.Models
{
    public interface TimKiemStrategy
    {
        IQueryable<Product> Search(IQueryable<Product> products, string keyword);
    }
}
