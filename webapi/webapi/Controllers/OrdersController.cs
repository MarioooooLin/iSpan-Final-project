﻿using System;
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
    public class OrdersController : ControllerBase
    {
        private readonly TriangleContext _context;

        public OrdersController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/Orders
        [HttpGet]
        public async Task<IEnumerable<OrderDetailDTO>> GetCourseOrder(int? CandidateId,bool? vaild)
        {
            var result = _context.CourseOrder.Join(_context.Course,a=>a.CourseId,b=>b.CourseId,(co,c)=>new OrderDetailDTO
            {
                OrderId = co.OrderId,
                CandidateId = co.CandidateId,
                CourseId = co.CourseId,
                CourseName = c.CourseName,
                Price = c.Price,
                Buyingtime = co.Buyingtime,
                Vaild = co.Vaild,
            }).Where(x=>x.CandidateId== CandidateId);

            if(vaild == true)
            {
                result= result.Where(x=>x.Vaild == true);
            }
            else
            {
                result = result.Where(x => x.Vaild == false);

            }
            return await Task.FromResult(result);

        }

        // GET: api/Orders/5
        [HttpGet("{CandidateId}/{CourseId}")]
        public async Task<IEnumerable<OrderDetailDTO>> GetCourseOrder(int? CandidateId, int? CourseId)
        {
            var result = _context.CourseOrder.Join(_context.Course, a => a.CourseId, b => b.CourseId, (co, c) => new OrderDetailDTO
            {
                OrderId = co.OrderId,
                CandidateId = co.CandidateId,
                CourseId = co.CourseId,
                CourseName = c.CourseName,
                Price = c.Price,
                Buyingtime = co.Buyingtime,
                Vaild = co.Vaild,

            }).Where(x => x.CandidateId == CandidateId).Where(x => x.CourseId == CourseId);

            return await Task.FromResult(result);
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
        public async Task<CourseOrder> PostCourseOrder([FromBody]CourseOrder courseOrder)
        {
            CourseOrder co = new CourseOrder
            {
                CandidateId = courseOrder.CandidateId,
                CourseId = courseOrder.CourseId,
                Buyingtime = DateTime.Now,
                Vaild = true,
            };
            _context.CourseOrder.Add(co);
            await _context.SaveChangesAsync();

            return co;
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
