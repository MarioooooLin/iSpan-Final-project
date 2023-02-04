using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
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
    public class CourseDetailsController : ControllerBase
    {
        private readonly TriangleContext _context;

        public CourseDetailsController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/CourseDetails
        [HttpGet("{id}")]
        public async Task<IEnumerable<CourseSkillDTO>> GetCourseDetail(int? id)
        {
            var result = _context.CourseDetail.Join(_context.Skill, x => x.SkillId, y => y.SkillId, (cd, s) => new CourseSkillDTO
            {
                CourseId = cd.CourseId,
                SkillId = cd.SkillId,
                SkillName = s.SkillName,
            }).Where(x => x.CourseId == id);

            return result;
        }

        // GET: api/CourseDetails/5
        [HttpGet("{CourseId}/{SkillId}")]
        public async Task<ActionResult<CourseDetail>> GetCourseDetail(int? CourseId, int? SkillId)
        {
            var courseDetail = await _context.CourseDetail.FindAsync(CourseId);

            if (courseDetail == null)
            {
                return NotFound();
            }

            return courseDetail;
        }

        // PUT: api/CourseDetails/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCourseDetail(int id, CourseDetail courseDetail)
        {
            if (id != courseDetail.CourseId)
            {
                return BadRequest();
            }

            _context.Entry(courseDetail).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CourseDetailExists(id))
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

        // POST: api/CourseDetails
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CourseDetail>> PostCourseDetail(CourseDetail courseDetail)
        {
            _context.CourseDetail.Add(courseDetail);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CourseDetailExists(courseDetail.CourseId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCourseDetail", new { id = courseDetail.CourseId }, courseDetail);
        }

        // DELETE: api/CourseDetails/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCourseDetail(int id)
        {
            var courseDetail = await _context.CourseDetail.FindAsync(id);
            if (courseDetail == null)
            {
                return NotFound();
            }

            _context.CourseDetail.Remove(courseDetail);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CourseDetailExists(int id)
        {
            return _context.CourseDetail.Any(e => e.CourseId == id);
        }

    }
}
