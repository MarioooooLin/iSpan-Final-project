using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Intrinsics.X86;
using System.Security.Principal;
using System.Threading.Tasks;
using System.Xml.Linq;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using webapi.Models;

namespace webapi.Controllers
{
    [EnableCors("AllowAny")]
    [Route("api/[controller]")]
    [ApiController]
    public class EnterpriseInterestsController : ControllerBase
    {
        private readonly TriangleContext _context;

        public EnterpriseInterestsController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/EnterpriseInterests
        [HttpGet]

        //企業端會員中心
        public async Task<IEnumerable<EmpInterestDTO>> Interest(string id, int status)
        {
            if (status == 0)
            {
                var i = _context.EnterpriseInterest.Join(_context.Vacancy, ei => ei.VacancyId, v => v.VacancyId, (ei, v) => new { ei, v }).Join(_context.Candidate, x => x.ei.CandidateId, c => c.CandidateId, (x, c) => new { x, c }).Join(_context.Enterprise, x => x.x.ei.EnterpriseId, e => e.EnterpriseId, (x, e) => new { x, e }).Where(x => x.x.x.ei.EnterpriseId == Int32.Parse(id)).Select(x => new EmpInterestDTO
                {
                       
                    WorkName = x.x.x.v.WorkName,          
                    Name = x.x.c.Name,
                    Status = x.x.x.ei.Status,
                    Number = x.x.x.v.Number,

                });



                return i.ToList();
            }
            else
            {
                var i = _context.EnterpriseInterest.Join(_context.Vacancy, ei => ei.VacancyId, v => v.VacancyId, (ei, v) => new { ei, v }).Join(_context.Candidate, x => x.ei.CandidateId, c => c.CandidateId, (x, c) => new { x, c }).Join(_context.Enterprise, x => x.x.ei.EnterpriseId, e => e.EnterpriseId, (x, e) => new { x, e }).Where(x => x.x.x.ei.EnterpriseId == Int32.Parse(id) && x.x.x.ei.Status == status).Select(x => new EmpInterestDTO
                {
                    Name = x.x.c.Name,
                    WorkName = x.x.x.v.WorkName,
                    Status = x.x.x.ei.Status,

                });

                return i.ToList();
            }
        }

        // GET: api/EnterpriseInterests/5
        [HttpGet("{id}")]
        public async Task<IEnumerable<EnterpriseInterest>> GetEnterpriseInterest(int id)
        {
            var result = _context.EnterpriseInterest.Select(x => new EnterpriseInterest
            {
                CandidateId = x.CandidateId,
                VacancyId = x.VacancyId,
                EnterpriseId = x.EnterpriseId,
                Id = x.Id
            });
            if (id is int)
            {
                result = result.Where(x => x.CandidateId == id);
            }
            return result;
        }

        // PUT: api/EnterpriseInterests/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutEnterpriseInterest(int id, EnterpriseInterest enterpriseInterest)
        {
            if (id != enterpriseInterest.Id)
            {
                return BadRequest();
            }

            _context.Entry(enterpriseInterest).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EnterpriseInterestExists(id))
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

        // POST: api/EnterpriseInterests
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<EnterpriseInterest>> PostEnterpriseInterest(EnterpriseInterest enterpriseInterest)
        {
            _context.EnterpriseInterest.Add(enterpriseInterest);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetEnterpriseInterest", new { id = enterpriseInterest.Id }, enterpriseInterest);
        }

        [HttpPost("filter")]
        public async Task<EnterpriseInterest> PostInterest([FromBody] EnterpriseInterest enterpriseInterest)
        {

            EnterpriseInterest ic = new EnterpriseInterest
            {
                CandidateId = enterpriseInterest.CandidateId,
                VacancyId = enterpriseInterest.VacancyId,
                EnterpriseId = enterpriseInterest.EnterpriseId,
                Status = enterpriseInterest.Status,
                Cv = enterpriseInterest.Cv
            };
            _context.EnterpriseInterest.Add(ic);
            await _context.SaveChangesAsync();

            return ic;
        }

        // DELETE: api/EnterpriseInterests/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEnterpriseInterest(int id)
        {
            var enterpriseInterest = await _context.EnterpriseInterest.FindAsync(id);
            if (enterpriseInterest == null)
            {
                return NotFound();
            }

            _context.EnterpriseInterest.Remove(enterpriseInterest);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool EnterpriseInterestExists(int id)
        {
            return _context.EnterpriseInterest.Any(e => e.Id == id);
        }
    }
}
