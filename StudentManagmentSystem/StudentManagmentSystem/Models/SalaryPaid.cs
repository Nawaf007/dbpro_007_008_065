//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StudentManagmentSystem.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SalaryPaid
    {
        public string TeacherId { get; set; }
        public System.DateTime Date { get; set; }
        public int Status { get; set; }
        public int Id { get; set; }
    
        public virtual Lookup Lookup { get; set; }
        public virtual Teacher Teacher { get; set; }
    }
}
