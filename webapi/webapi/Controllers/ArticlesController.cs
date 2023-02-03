using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis;
using Microsoft.EntityFrameworkCore;
using webapi.DTO;
using webapi.Models;

namespace webapi.Controllers
{
    [EnableCors("AllowAny")]
    [Route("api/[controller]")]
    [ApiController]
    public class ArticlesController : ControllerBase
    {
        private readonly TriangleContext _context;

        public ArticlesController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/Articles
        [HttpGet]
        public async Task<IEnumerable<ArticleDTO>> GetArticle(string? title,string? keyword)
        {
            var result = _context.Article.Join(_context.Teacher, x => x.AuthorId, y => y.TeacherId, (article, teacher) => new ArticleDTO
            {
                Title = article.Title,
                ArticleContent = article.ArticleContent,
                Img = article.Img,
                Update = article.UpdateTime.Value.ToString("yyyy-MM-dd"),
                Author = teacher.Name,
                UpdateTime = article.UpdateTime,
                ArticleId = article.ArticleId,
                ArticleFloor = article.ArticleFloor,
                NickName = article.NickName,
                Message = article.Message,
                Keyword = article.Keyword,

            });

            result = result.Where(x => x.Img != null);

            if (!string.IsNullOrWhiteSpace(title))
            {
                result = result.Where(a => a.Title.Contains(title));
            }
            if (!string.IsNullOrWhiteSpace(keyword))
            {
                result = result.Where(a => a.Keyword.Contains(keyword));
            }

            return await Task.FromResult(result);


            //       var result = _context.Article.Select(x => new ArticleDTO
            //     {
            //       Title = x.Title,
            //     ArticleContent = x.ArticleContent,
            //   Img = x.img,
            // UpdateTime = x.UpdateTime,
            // Author = x.AuthorId
            //  });
        }

        // GET: api/Articles/5
        [HttpGet("{id}")]
        public async Task<IEnumerable<ArticleDTO>> GetArticle(int? id)
        {
            var result = _context.Article.Join(_context.Teacher, x => x.AuthorId, y => y.TeacherId, (article, teacher) => new ArticleDTO
            {
                Title = article.Title,
                ArticleContent = article.ArticleContent,
                Img = article.Img,
                Update = article.UpdateTime.Value.ToString("yyyy-MM-dd"),
                Author = teacher.Name,
                UpdateTime = article.UpdateTime,
                ArticleId = article.ArticleId,
                Expreience = teacher.Experience,
                ArticleFloor = article.ArticleFloor,
                NickName = article.NickName,
                Message = article.Message,
                TeacherPhoto = teacher.Img,
                TeacherIntro=teacher.Intro,

            }).Where(x => x.ArticleId == id);

            return result;
        }

        [HttpGet("id")]
        public async Task<IEnumerable<ArticleDTO>> GetArt()
        {
            var result = _context.Article.Join(_context.Teacher, x => x.AuthorId, y => y.TeacherId, (article, teacher) => new ArticleDTO
            {
                Title = article.Title,
                ArticleContent = article.ArticleContent,
                Img = article.Img,
                Update = article.UpdateTime.Value.ToString("yyyy-MM-dd"),
                Author = teacher.Name,
                //UpdateTime = article.UpdateTime,
                ArticleId = article.ArticleId,
                Expreience = teacher.Experience,
                ArticleFloor = article.ArticleFloor,
                NickName = article.NickName,
                Message = article.Message,
                TeacherPhoto = teacher.Img,

            });

            return result;
        }

        // GET: api/Articles/5
        //[HttpGet("{title}")]
        //public async Task<IEnumerable<Article>> GetArticleMessage(string? title)
        //{
        //    var result = _context.Article.Select(x =>  new Article
        //    {
        //        Title = x.Title,
        //        UpdateTime = x.UpdateTime,
        //        ArticleId = x.ArticleId,
        //        ArticleFloor = x.ArticleFloor,
        //        nickName = x.nickName,
        //        message = x.message,


        //    }).Where(x => x.Title == title);

        //    return result;
        //}



        // PUT: api/Articles/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutArticle(int id, Article article)
        {
            if (id != article.ArticleId)
            {
                return BadRequest();
            }

            _context.Entry(article).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ArticleExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Articles
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<Article> PostArticle([FromBody] Article test)
        {
            Article arti = new Article
            {
                NickName = test.NickName,
                Message = test.Message,
                Title = test.Title,
                UpdateTime = test.UpdateTime,
                ArticleFloor = test.ArticleFloor,
                AuthorId = test.AuthorId,
            };
            _context.Article.Add(arti);
            await _context.SaveChangesAsync();


            return arti;


            //_context.Article.Add(article);
            //await _context.SaveChangesAsync();

            //return CreatedAtAction("GetArticle", new { id = article.ArticleId }, article);
        }

        // DELETE: api/Articles/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteArticle(int id)
        {
            var article = await _context.Article.FindAsync(id);
            if (article == null)
            {
                return NotFound();
            }

            _context.Article.Remove(article);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ArticleExists(int id)
        {
            return _context.Article.Any(e => e.ArticleId == id);
        }
    }
}
