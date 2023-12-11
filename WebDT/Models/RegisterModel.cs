using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebDT.Models
{

    public class RegisterModel
    {
        [Key]
        public long id { get; set; }

        [Display(Name = "Tên đăng nhập")]
        [StringLength(100, MinimumLength = 2, ErrorMessage = "Tên ít nhất 2 ký tự ")]
        [Required(ErrorMessage = "Yêu cầu nhập tên đăng nhập")]
        public string username { get; set; }


        [Display(Name = "Mật khẩu")]
        [StringLength(20, MinimumLength = 6, ErrorMessage = "Độ dài mật khẩu ít nhất 6 kí tự :)")]
        [Required(ErrorMessage = "Yêu cầu nhập mật khẩu")]

        public string password { get; set; }
        [Display(Name = "Xác nhận mật khẩu")]
        //[Compare("password", ErrorMessage = "Xác nhận mật khẩu không đúng =.=")]

        public string confirmpassword { get; set; }
        [Display(Name = "Họ tên")]
        [Required(ErrorMessage = "Yêu cầu nhập họ tên")]
        public string name { get; set; }
        [Display(Name = "Địa chỉ")]
        public string address { get; set; }
        [Display(Name = "Email")]
        [Required(ErrorMessage = "Yêu cầu nhập email")]

        public string email { get; set; }

        [Display(Name = "Điện thoại")]

        public string phone { get; set; }

    }

    public class RegisterModelProxy : RegisterModel
    {
        public new string username
        {
            get { return base.username; }
            set
            {
                if (value.Length < 6)
                {
                    // Thêm logic kiểm tra tên đăng nhập ít nhất 6 ký tự
                    // Có thể throw một exception hoặc thêm validation error
                    throw new ValidationException("Tên đăng nhập ít nhất 6 ký tự.");
                }
                base.username = value;
            }
        }

        public new string password
        {
            get { return base.password; }
            set
            {
                if (value.Length < 8)
                {
                    // Thêm logic kiểm tra độ dài mật khẩu ít nhất 8 ký tự
                    throw new ValidationException("Mật khẩu ít nhất phải có 8 ký tự.");
                }
                base.password = value;
            }
        }

        public new string name
        {
            get { return base.name; }
            set
            {
                if (value.Contains("cc"))
                {
                    // Thêm logic kiểm tra họ tên không chứa chữ "cc"
                    throw new ValidationException("Họ tên không được chứa chữ 'cc'.");
                }
                base.name = value;
            }
        }

        public new string phone
        {
            get { return base.phone; }
            set
            {
                if (value.Length != 10)
                {
                    // Thêm logic kiểm tra số điện thoại phải có đúng 10 ký tự
                    throw new ValidationException("Số điện thoại phải có đúng 10 ký tự.");
                }
                base.phone = value;
            }
        }
    }
}
