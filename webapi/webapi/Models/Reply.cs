﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace webapi.Models
{
    public partial class Reply
    {
        public int ReplyId { get; set; }
        public int ArticleId { get; set; }
        public DateTime? ReplyTime { get; set; }
        public int? Floor { get; set; }
        public string ReplyMessage { get; set; }
        public string ArticleName { get; set; }
        public string Contents { get; set; }
    }
}