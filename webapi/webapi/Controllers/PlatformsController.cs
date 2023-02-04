using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using Microsoft.VisualBasic;
using webapi.DTO;
using webapi.Models;

namespace webapi.Controllers
{
    [EnableCors("AllowAny")]
    [Route("api/[controller]")] //資訊傳遞使用
    [ApiController]
    public class PlatformsController : ControllerBase
    {
        private readonly TriangleContext _context;

        public PlatformsController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/Platforms
        [HttpGet]
        public async Task<IEnumerable<PlatformRePlyDTO>> Get(string? name,string? order)
        {
            //var result = _context.Platform.Select(x => new PlatformsDTO
            //{
            //    ArticleId = x.ArticleId,
            //    ArticleName = x.ArticleName,
            //    Contents = x.Contents,
            //    UpdateTime = x.UpdateTime,
            //    //Authorld = x.Authorld,
            //});

            var result = from p in _context.Platform
                         join r in _context.Reply
                         on p.ArticleId equals r.ArticleId into pr
                         from r in pr.DefaultIfEmpty()
                         group new { p, r } by new { p.ArticleId, p.ArticleName, p.AuthorId, p.Contents, p.UpdateTime } into g
                         select new PlatformRePlyDTO
                         {
                             ArticleId = g.Key.ArticleId,
                             ArticleName = g.Key.ArticleName,
                             AuthorId = g.Key.AuthorId,
                             Contents = g.Key.Contents,
                             UpdateTime = g.Key.UpdateTime,
                             ReplyCount = g.Count(r => r.r != null)
                         };
            result = result.OrderByDescending(x => x.UpdateTime);

            if (!string.IsNullOrEmpty(name))
            {
                result = result.Where(x => x.ArticleName.Contains(name));
            }

            if (!string.IsNullOrEmpty(order))
            {
                result = result.OrderByDescending(x => x.ReplyCount);
            }
            

            return result;

        }

        // GET: api/Platforms/5
        [HttpGet("{id}")]
        public async Task<IEnumerable<Platform>> GetPlatform(int? id)
        {
            var result = _context.Platform.Where(x => x.ArticleId == id).Select(x => new Platform
            {
                ArticleId = x.ArticleId,
                ArticleName = x.ArticleName,
                Contents = x.Contents,
                UpdateTime = x.UpdateTime,

            });

            return result;
            //var platform = await _context.Platform.FindAsync(id);

            //if (platform == null)
            //{
            //    return NotFound();
            //}

            //return platform;
        }

        // PUT: api/Platforms/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutPlatform(int id, Platform platform)
        {
            if (id != platform.ArticleId)
            {
                return BadRequest();
            }

            _context.Entry(platform).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PlatformExists(id))
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

        // POST: api/Platforms
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        //public async Task<IEnumerable<PlatformsDTO>> PostPlatform(Platform platform)
        public async Task<Platform> PostPlatform([FromBody]PlatformsDTO platform)
        {
            Platform pf = new Platform
            {
                ArticleName = platform.ArticleName,
                Contents = platform.Contents,
                AuthorId = platform.AuthorId
            };
            _context.Platform.Add(pf);
            await _context.SaveChangesAsync();

            return pf;
            //return CreatedAtAction("GetPlatform", new { id = platform.ArticleId }, platform);
        }

        // DELETE: api/Platforms/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePlatform(int id)
        {
            var platform = await _context.Platform.FindAsync(id);
            if (platform == null)
            {
                return NotFound();
            }

            _context.Platform.Remove(platform);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        [HttpPost("Filter")] //api/Platforms/Filter
        public async Task<IEnumerable<PlatformsDTO>> FilterPlatform([FromBody] PlatformsDTO Article)
        {
            //var ArticleName = _context.Platform.Where()
            return _context.Platform.Where(
                emp => emp.ArticleName.Contains(Article.ArticleName)).Select(emp => new PlatformsDTO
                {
                    ArticleName = emp.ArticleName,
                    Contents = emp.Contents,
                    UpdateTime = emp.UpdateTime,
                    ArticleId = emp.ArticleId,
                });
        }


        private bool PlatformExists(int id)
        {
            return _context.Platform.Any(e => e.ArticleId == id);
        }


    }
}
