using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Xml.Linq;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using webapi.Models;

namespace webapi.Controllers
{
    [EnableCors("AllowAny")]
    [Route("api/[controller]")]
    [ApiController]
    public class CourseContentsController : ControllerBase
    {
        private readonly TriangleContext _context;

        public CourseContentsController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/CourseContents
        [HttpGet]
        public async Task<IEnumerable<CourseContent>> GetCourseContent(int? CourseId)
        {
             var result =  _context.CourseContent.Select(x => new CourseContent
            {
                CourseId = x.CourseId,
                Coursechapter = x.Coursechapter,
                ChapterName = x.ChapterName,
            }).Where(x => x.CourseId == CourseId);
            return result;
        }

        // GET: api/CourseContents/5
        [HttpGet("{id}")]
        public async Task<IEnumerable<CourseContent>> GetCourseContent(int? CourseId,int? Coursechapter)
        {
            var result = _context.CourseContent.Select(x => new CourseContent
            {
                CourseId = x.CourseId,
                Coursechapter = x.Coursechapter,
                ChapterName = x.ChapterName,
                Video = x.Video,
            }).Where(x=>x.CourseId== CourseId).Where(x=>x.Coursechapter == Coursechapter);

            return result;
        }

        // PUT: api/CourseContents/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCourseContent(int id, CourseContent courseContent)
        {
            if (id != courseContent.CourseId100)
            {
                return BadRequest();
            }

            _context.Entry(courseContent).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CourseContentExists(id))
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

        // POST: api/CourseContents
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CourseContent>> PostCourseContent(CourseContent courseContent)
        {
            _context.CourseContent.Add(courseContent);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CourseContentExists(courseContent.CourseId100))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCourseContent", new { id = courseContent.CourseId100 }, courseContent);
        }

        // DELETE: api/CourseContents/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCourseContent(int id)
        {
            var courseContent = await _context.CourseContent.FindAsync(id);
            if (courseContent == null)
            {
                return NotFound();
            }

            _context.CourseContent.Remove(courseContent);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CourseContentExists(int id)
        {
            return _context.CourseContent.Any(e => e.CourseId100 == id);
        }
    }
}
