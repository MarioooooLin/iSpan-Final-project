namespace webapi.DTO
{
    public class ArticleDTO
    {
        public string Title { get; set; }
        public string ArticleContent { get; set; }
        public string Img { get; set; }
        public DateTime? UpdateTime { get; set; }
        public string? Author { get; set; }
        public string? Update { get; set; }
        public int? ArticleId { get; set; }
        public string? Expreience { get; set; }
        public int? ArticleFloor { get; set; }
        public string? NickName { get; set; }
        public string? Message { get; set; }
        public int? authorId { get; set; }
        public string? TeacherPhoto { get; set; }
        public string Keyword { get;  set; }
        public string TeacherIntro { get;  set; }
    }
}