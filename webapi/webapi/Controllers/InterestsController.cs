using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
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
    public class InterestsController : ControllerBase
    {
        private readonly TriangleContext _context;

        public InterestsController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/Interests
        [HttpGet]
        public async Task<IEnumerable<InterestDTO>> GetInterest(string id, int status)
        {
            if (status == 0)
            {
                var i = _context.Interest.Join(_context.Enterprise, i => i.EnterpriseId, e => e.EnterpriseId, (i, e) => new { i, e }).Join(_context.Vacancy, x => x.i.VacancyId, v => v.VacancyId, (x, v) => new { x, v }).Where(x => x.x.i.CandidateId == Int32.Parse(id)).Select(x => new InterestDTO
                {
                    InterestStatus = x.x.i.InterestStatus,
                    CompanyName = x.x.e.CompanyName,
                    WorkName = x.v.WorkName,
                });



                return i.ToList();
            }
            else
            {
                var i = _context.Interest.Join(_context.Enterprise, i => i.EnterpriseId, e => e.EnterpriseId, (i, e) => new { i, e }).Join(_context.Vacancy, x => x.i.VacancyId, v => v.VacancyId, (x, v) => new { x, v }).Where(x => x.x.i.CandidateId == Int32.Parse(id) && x.x.i.InterestStatus == status).Select(x => new InterestDTO
                {
                    InterestStatus = x.x.i.InterestStatus,
                    CompanyName = x.x.e.CompanyName,
                    WorkName = x.v.WorkName,


                });

                return i.ToList();
            }
        }




        //GET: api/Interests/5
        [HttpGet("{id}")]
        public async Task<IEnumerable<Interest>> Get(int id)
        {
            var result = _context.Interest.Select(x => new Interest
            {
                CandidateId = x.CandidateId,
                VacancyId = x.VacancyId,
                Id = x.Id
            });
            if (id is int) 
            {
                result = result.Where(x => x.CandidateId == id);
            }
            return result;
        }

        // PUT: api/Interests/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutInterest(int id, Interest interest)
        {
            if (id != interest.Id)
            {
                return BadRequest();
            }

            _context.Entry(interest).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!InterestExists(id))
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

        // POST: api/Interests
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        
        [HttpPost]
        public async Task<Interest> Post([FromBody] Interest interest)
        {
            //_context.Interest.Add(interest);
            //await _context.SaveChangesAsync();

            //return CreatedAtAction("GetInterest", new { id = interest.Id }, interest);

            Interest ic = new Interest
            {
                CandidateId = interest.CandidateId,
                VacancyId = interest.VacancyId,
                EnterpriseId = interest.EnterpriseId,
            };
            _context.Interest.Add(ic);
            await _context.SaveChangesAsync();

            return ic;
        }

        

        // DELETE: api/Interests/5
        [HttpDelete("{id}")]
        public async Task<string> DeleteInterest(int id)
        {
            var interest = await _context.Interest.FindAsync(id);
            if (interest == null)
            {
                return "找不到欲刪除的記錄!";
            }

            _context.Interest.Remove(interest);
            await _context.SaveChangesAsync();

            return "刪除成功!";
        }


        private bool InterestExists(int id)
        {
            return _context.Interest.Any(e => e.Id == id);
        }
    }
}
