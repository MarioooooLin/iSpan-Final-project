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
    public class CandidateSkillsController : ControllerBase
    {
        private readonly TriangleContext _context;

        public CandidateSkillsController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/CandidateSkills
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CandidateSkill>>> GetCandidateSkill()
        {
            return await _context.CandidateSkill.ToListAsync();
        }

        // GET: api/CandidateSkills/5
        [HttpGet("{id}")]
        public async Task<IEnumerable<CandidateSkillDTO>> GetCandidateSkill(int id)
        {
            return _context.CandidateSkill.Where(cs => cs.CandidateId == id).Join(_context.Skill, c => c.SkillId, s => s.SkillId, (c, s) => new CandidateSkillDTO
            {
                CandidateId = c.CandidateId,
                SkillId = s.SkillId,
                SkillName = s.SkillName,

            });
        }

        // PUT: api/CandidateSkills/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCandidateSkill(int id, CandidateSkill candidateSkill)
        {
            if (id != candidateSkill.Id)
            {
                return BadRequest();
            }

            _context.Entry(candidateSkill).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CandidateSkillExists(id))
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

        // POST: api/CandidateSkills
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CandidateSkill>> PostCandidateSkill(CandidateSkill candidateSkill)
        {
            _context.CandidateSkill.Add(candidateSkill);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCandidateSkill", new { id = candidateSkill.Id }, candidateSkill);
        }

        // DELETE: api/CandidateSkills/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCandidateSkill(int id)
        {
            var candidateSkill = await _context.CandidateSkill.FindAsync(id);
            if (candidateSkill == null)
            {
                return NotFound();
            }

            _context.CandidateSkill.Remove(candidateSkill);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CandidateSkillExists(int id)
        {
            return _context.CandidateSkill.Any(e => e.Id == id);
        }
    }
}
