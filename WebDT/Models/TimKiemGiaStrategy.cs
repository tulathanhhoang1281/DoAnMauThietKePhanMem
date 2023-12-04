using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDT.Models.EF;

namespace WebDT.Models
{
    public class TimKiemGiaStrategy : TimKiemStrategy
    {
        public IQueryable<Product> Search(IQueryable<Product> products, string keyword)
        {
            // Giả sử: keyword có thể là "0-100", "100-200", ...
            var priceRange = ConvertKeywordToPriceRange(keyword);

            // áp dụng tìm kiếm theo giá
            return products.Where(p => p.price >= priceRange.Item1 && p.price <= priceRange.Item2);
        }

        private Tuple<int, int> ConvertKeywordToPriceRange(string keyword)
        {
            var priceValues = keyword.Split('-');

            if (priceValues.Length == 2 && int.TryParse(priceValues[0], out int minPrice) && int.TryParse(priceValues[1], out int maxPrice))
            {
                return Tuple.Create(minPrice, maxPrice);
            }

            return Tuple.Create(0, int.MaxValue);
        }
    }
}