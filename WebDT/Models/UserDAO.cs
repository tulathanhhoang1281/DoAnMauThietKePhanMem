using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDT.Models.EF;

namespace WebDT.Models
{
    public class UserDAO
    {
        WebMayTinhEntities _db = new WebMayTinhEntities();
        public long Insert(User entity)
        {
            _db.Users.Add(entity);
            _db.SaveChanges();
            return entity.id;
        }
        public User getById(string userName)
        {
            return _db.Users.SingleOrDefault(x => x.username == userName);
        }
        public int Login(string userName, string passWord )
        {
            var result = _db.Users.SingleOrDefault(x => x.username == userName && x.status == true);
            if (result == null)
            {
                return 0;
            }
            else
            {
                if (result.status == false)
                {
                    return -1;
                }
                else
                {
                    if (result.password == passWord)
                   
                            return 1;
                    
                    else
                        return -2;
                }
            }
        }
        public bool CheckUserName(string userName)
        {
            return _db.Users.Count(x => x.username == userName) > 0;
        }
        public bool CheckEmail(string email)
        {
            return _db.Users.Count(x => x.email == email) > 0;
        }

    }
}