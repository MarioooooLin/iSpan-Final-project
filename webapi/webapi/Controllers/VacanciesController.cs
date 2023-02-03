using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using webapi.Models;
using static System.Net.WebRequestMethods;

namespace webapi.Controllers
{
    [EnableCors("AllowAny")]
    [Route("api/[controller]")]
    [ApiController]
    public class VacanciesController : ControllerBase
    {
        private readonly TriangleContext _context;

        public VacanciesController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/Vacancies
        [HttpGet]
        public async Task<IEnumerable<VacancyDTO>> Get(string? name, string? category, string? workplace)
        {
            var result = _context.Vacancy.Join(_context.Enterprise, x => x.EnterpriseId, y => y.EnterpriseId, (van, etp) => new VacancyDTO
            {
                VacancyId = van.VacancyId,
                WorkName = van.WorkName,
                WorkPlace = van.WorkPlace,
                Salary = van.Salary,
                FullPartTime = van.FullPartTime,
                Shift = van.Shift,
                WorkContent = van.WorkContent,
                updatetime = van.Updatetime,
                Seniority = van.Seniority,
                Category = van.Category,
                CompanyName = etp.CompanyName,
                Address = etp.Address,
                Info = etp.Info,
                img = etp.Img,
                UniformNumbers = etp.UniformNumbers,
                Employee = etp.Employee,
                EnterpriseId = etp.EnterpriseId,
                Updatetime =  van.Updatetime
            });
            result = result.OrderByDescending(x => x.VacancyId);

            if (!string.IsNullOrWhiteSpace(name))
            {
                result = result.Where(a => a.WorkName.Contains(name) || a.CompanyName.Contains(name));
            }
            if (!string.IsNullOrWhiteSpace(category))
            {
                result = result.Where(a => a.Category.Contains(category));
            }
            if (!string.IsNullOrWhiteSpace(workplace))
            {
                result = result.Where(a => a.WorkPlace.Contains(workplace));
            }

            return await Task.FromResult(result);
        } //完成 by jing

        // GET: api/Vacancies/5
        [HttpGet("{id}")]
        public async Task<ActionResult<VacancyDTO>> Get(int id)
        {
            var result = from van in _context.Vacancy
                         join etp in _context.Enterprise
                         on van.EnterpriseId equals etp.EnterpriseId
                         where van.VacancyId == id
                         select new VacancyDTO
                         {
                             VacancyId = van.VacancyId,
                             WorkName = van.WorkName,
                             WorkPlace = van.WorkPlace,
                             Salary = van.Salary,
                             FullPartTime = van.FullPartTime,
                             Shift = van.Shift,
                             updatetime = van.Updatetime,
                             Seniority = van.Seniority,
                             Category = van.Category,
                             WorkContent = van.WorkContent,
                             WorkReqire = van.WorkReqire,
                             CompanyName = etp.CompanyName,
                             Address = etp.Address,
                             Info = etp.Info,
                             img = etp.Img,
                             UniformNumbers = etp.UniformNumbers,
                             Employee = etp.Employee,
                             EnterpriseId = etp.EnterpriseId
                         };
            return result.SingleOrDefault();
        } //完成 by jing

        //企業端 職缺新增、檢視
        [HttpGet("view")]
        public async Task<IEnumerable<Vacancy>> VacanciesView(int id)
        {        
            return _context.Vacancy.Where(v=>v.EnterpriseId== id);
        }

        [HttpGet("edit{id}")]
        public async Task<IEnumerable<Vacancy>> VacanciesEdit(int id)
        {
            return _context.Vacancy.Where(v => v.VacancyId == id);
        }



        //職缺修改
        // PUT: api/Vacancies/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<string> PutVacancy(int id, Vacancy vacancy)
        {
            Vacancy v = await _context.Vacancy.FindAsync(vacancy.VacancyId);
            v.WorkName = vacancy.WorkName;
            v.WorkPlace = vacancy.WorkPlace;
            v.WorkReqire = vacancy.WorkReqire;
            v.Category = vacancy.Category;
            v.Number = vacancy.Number;
            v.Shift = vacancy.Shift;
            v.FullPartTime = vacancy.FullPartTime;
            v.Salary = vacancy.Salary;
            v.WorkContent= vacancy.WorkContent;
            v.Seniority = vacancy.Seniority;
            v.Updatetime= vacancy.Updatetime;
            v.WorkTime= vacancy.WorkTime;
            _context.Entry(v).State = EntityState.Modified;
            
            await _context.SaveChangesAsync();


            return "修改成功!";
        }

        [HttpPut("down")]
        public async Task<string> ChangeVacancy(Status status)
        {
            Vacancy v = await _context.Vacancy.FindAsync(status.id);
            if(status.status == "true")
            {
                v.Valid = true;
            }
            else
            {
                v.Valid = false;
            }


            _context.Entry(v).State = EntityState.Modified;

            await _context.SaveChangesAsync();


            return "修改成功!";
        }



        // POST: api/Vacancies
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Vacancy>> PostVacancy(Vacancy vacancy)
        {
            _context.Vacancy.Add(vacancy);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetVacancy", new { id = vacancy.VacancyId }, vacancy);
        }

        // DELETE: api/Vacancies/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteVacancy(int id)
        {
            var vacancy = await _context.Vacancy.FindAsync(id);
            if (vacancy == null)
            {
                return NotFound();
            }

            _context.Vacancy.Remove(vacancy);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool VacancyExists(int id)
        {
            return _context.Vacancy.Any(e => e.VacancyId == id);
        }
    }
}
