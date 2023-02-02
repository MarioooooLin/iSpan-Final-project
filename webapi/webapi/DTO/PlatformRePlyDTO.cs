namespace webapi.DTO
{
    public class PlatformRePlyDTO
    {
        public int ArticleId { get; set; }
        public string? ArticleName { get; set; }
        public int? AuthorId { get; set; }
        public string? Contents { get; set; }
        public DateTime? UpdateTime { get; set; }
        public int? ReplyCount { get; set; }
    }
}