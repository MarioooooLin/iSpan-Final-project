using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using webapi.Models;

namespace webapi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrdersController : ControllerBase
    {
        private readonly TriangleContext _context;

        public OrdersController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/Orders
        [HttpGet]
        public async Task<IEnumerable<CourseOrder>> GetCourseOrder()
        {
            return await _context.CourseOrder.ToListAsync();
        }

        // GET: api/Orders/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CourseOrder>> GetCourseOrder(int id)
        {
            var courseOrder = await _context.CourseOrder.FindAsync(id);

            if (courseOrder == null)
            {
                return NotFound();
            }

            return courseOrder;
        }

        // PUT: api/Orders/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCourseOrder(int id, CourseOrder courseOrder)
        {
            if (id != courseOrder.OrderId)
            {
                return BadRequest();
            }

            _context.Entry(courseOrder).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CourseOrderExists(id))
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

        // POST: api/Orders
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<IEnumerable<CourseOrder>> PostCourseOrder(CourseOrder courseOrder)
        {
            _context.CourseOrder.Add(courseOrder);
            await _context.SaveChangesAsync();

            return (IEnumerable<CourseOrder>)courseOrder;
        }

        // DELETE: api/Orders/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCourseOrder(int id)
        {
            var courseOrder = await _context.CourseOrder.FindAsync(id);
            if (courseOrder == null)
            {
                return NotFound();
            }

            _context.CourseOrder.Remove(courseOrder);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CourseOrderExists(int id)
        {
            return _context.CourseOrder.Any(e => e.OrderId == id);
        }
    }
}
