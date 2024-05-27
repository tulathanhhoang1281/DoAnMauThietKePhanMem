using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebDT.Controllers;
using WebDT.Models;

namespace WebDT.Areas.admin.Controllers
{
    internal interface GioHangIterator
    {
        CartItem First();
        CartItem Next();
        bool IsDone { get; }
        CartItem CurrentItem { get; }

        void ForeachItem(Action<CartItem> func);
    }

    public class CartIterator : GioHangIterator
    {
        List<CartItem> _listCart;
        int current = 0;
        int step = 1;

        public CartIterator(List<CartItem> listcart)
        {
            _listCart = listcart;
        }

        public bool IsDone
        {
            get { return current >= _listCart.Count; }
        }

        public CartItem CurrentItem => _listCart[current];

        public CartItem First()
        {
            current = 0;
            if (_listCart.Count > 0)
            {
                return _listCart[current];
            }
            return null;
        }

        public CartItem Next()
        {
            current += step;
            if (!IsDone)
                return _listCart[current];
            else
                return null;
        }

        public void ForeachItem(Action<CartItem> func)
        {
            int i = 0;
            while (i < _listCart.Count)
            {
                func(_listCart[i++]);
            }
        }
    }
}
