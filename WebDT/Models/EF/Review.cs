//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebDT.Models.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class Review
    {
        public int id { get; set; }
        public string Content { get; set; }
        public Nullable<int> Rating { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> User_id { get; set; }
        public Nullable<int> Product_id { get; set; }
        public Nullable<bool> Status { get; set; }
    
        public virtual User User { get; set; }
        public virtual Product Product { get; set; }
    }
}