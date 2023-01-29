namespace webapi.DTO
{
    public class ReplyDTO
    {
        public int? ReplyId { get; set; }
        public int? ArticleId { get; set; }
        public DateTime? ReplyTime { get; set; }
        public int? Floor { get; set; }
        public string? ReplyMessage { get; set; }
        public string? ArticleName { get; set; }
        public string? Contents { get; set; }

    }
}
