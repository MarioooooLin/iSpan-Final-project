namespace webapi.DTO
{
    public class ArticleDTO
    {
        public string Title { get; internal set; }
        public string ArticleContent { get; internal set; }
        public string Img { get; internal set; }
        public DateTime? UpdateTime { get; set; }
        public int? Author { get; internal set; }
    }
}