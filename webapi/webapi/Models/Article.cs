﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace webapi.Models
{
    public partial class Article
    {
        public int ArticleId { get; set; }
        public string Name { get; set; }
        public int? AuthorId { get; set; }
        public DateTime? UpdateTime { get; set; }
        public string Keyword { get; set; }
        public string Img { get; set; }
    }
}