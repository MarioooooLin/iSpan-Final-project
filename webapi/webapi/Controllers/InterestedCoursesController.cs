using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using webapi.DTO;
using webapi.Models;

namespace webapi.Controllers
{
    [EnableCors("AllowAny")]
    [Route("api/[controller]")]
    [ApiController]
    public class InterestedCoursesController : ControllerBase
    {
        private readonly TriangleContext _context;

        public InterestedCoursesController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/InterestedCourses
        [HttpGet]
        public async Task<IEnumerable<InterestedCourseDTO>> GetInterestedCourse(int? CandidateId,int? courseId)
        {
            var result = _context.InterestedCourse.Join(_context.Course,a => a.CourseId ,b=>b.CourseId ,(ic,c)=> new InterestedCourseDTO
            {
                CandidateId = ic.CandidateId,
                CourseId = c.CourseId,
                CourseName = c.CourseName,
                Price = c.Price,
                Chapter = c.Chapter,
            });
            if (CandidateId is int)
            {
                result = result.Where(x => x.CandidateId == CandidateId);
            }
            if(courseId is int)
            {
                result = result.Where(x => x.CourseId == courseId);
            }

            return await Task.FromResult(result);
        }

        // GET: api/InterestedCourses/5
        [HttpGet("{CandidateId}/{CourseId}")]
        public async Task<IEnumerable<InterestedCourse>> GetInterestedCourseId(int? CandidateId,int? CourseId)
        {
            var result = _context.InterestedCourse.Select(x => new InterestedCourse
            {
                CandidateId = x.CandidateId,
                CourseId = x.CourseId

            }).Where(x => x.CandidateId == CandidateId);

            if (CourseId is int)
            {
                return result.Where(x => x.CourseId == CourseId);
            }
            return await Task.FromResult(result);


        }

        // PUT: api/InterestedCourses/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutInterestedCourse(int id, InterestedCourse interestedCourse)
        {
            if (id != interestedCourse.CandidateId)
            {
                return BadRequest();
            }

            _context.Entry(interestedCourse).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!InterestedCourseExists(id))
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

        // POST: api/InterestedCourses
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<InterestedCourse> PostInterestedCourse([FromBody]InterestedCourse interestedCourse)
        {
            InterestedCourse ic = new InterestedCourse
            {
                CourseId = interestedCourse.CourseId,
                CandidateId = interestedCourse.CandidateId,
            };
            _context.InterestedCourse.Add(ic);
            await _context.SaveChangesAsync();

            return ic;

        }

        // DELETE: api/InterestedCourses/5
        [HttpDelete("{CandidateId}/{CourseId}")]
        public async Task<string> DeleteInterestedCourse(int? CandidateId, int? CourseId)
        {
            var interestedCourse = await _context.InterestedCourse.FindAsync(CandidateId, CourseId);

            if(interestedCourse == null)
            {
                return "找不到欲刪除的記錄!";
            }
 
            _context.InterestedCourse.Remove(interestedCourse);
            await _context.SaveChangesAsync();

            return "刪除成功!";

        }

        private bool InterestedCourseExists(int id)
        {
            return _context.InterestedCourse.Any(e => e.CandidateId == id);
        }
    }
}
