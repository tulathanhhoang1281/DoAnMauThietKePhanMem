using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDT.Models.EF;


namespace WebDT.Models
{
    public class GioHangThemCommand : GioHangCommand
    {
        private readonly HttpSessionStateBase _session;
        private const string CartSession = "CartSession";
        private readonly List<CartItem> _cart;
        private readonly int _productId;
        private readonly int _quantity;
        private readonly WebMayTinhEntities _db;

        public GioHangThemCommand(HttpSessionStateBase session, List<CartItem> cart, int productId, int quantity, WebMayTinhEntities db)
        {
            _session = session;
            _cart = cart;
            _productId = productId;
            _quantity = quantity;
            _db = db;
        }

        public void Execute()
        {

            var product = _db.Products.Find(_productId);

            if (_cart.Exists(x => x.Product.id == _productId))
            {
                foreach (var item in _cart)
                {
                    if (item.Product.id == _productId)
                    {
                        item.Quantity += _quantity;
                    }
                }
            }
            else
            {
                var item = new CartItem();
                item.Product = _db.Products.Find(_productId);
                item.Quantity = _quantity;
                item.actual_number = (int)product.quantity;
                _cart.Add(item);
            }

            _session[CartSession] = _cart;
        }
    }
}