﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace StoreProcedure.Models
{
    public partial class IDLISTESIYLEGETIRMEResult
    {
        public int? CategoryID { get; set; }
        public string CategoryName { get; set; }
        public int? ParentCategoryID { get; set; }
        public string FullPath { get; set; }
        public int? Level { get; set; }
    }
}
