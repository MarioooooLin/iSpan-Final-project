﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace webapi.Models
{
    public partial class Course
    {
        public int CourseId { get; set; }
        public string Name { get; set; }
        public int? TeacherId { get; set; }
        public string TeacherName { get; set; }
        public int? Price { get; set; }
        public DateTime? Addedtime { get; set; }
        public string Website { get; set; }
        public string Img { get; set; }
        public string Keyword { get; set; }
    }
}