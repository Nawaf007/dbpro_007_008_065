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
    
    public partial class SSAssignment
    {
        public int AssignmentId { get; set; }
        public int SSId { get; set; }
        public int ObtainedMarks { get; set; }
        public string FilePath { get; set; }
        public int Id { get; set; }
    
        public virtual Assignment Assignment { get; set; }
        public virtual SectionStudent SectionStudent { get; set; }
    }
}
