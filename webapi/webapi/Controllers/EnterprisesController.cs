using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Xml.Linq;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using webapi.Models;

namespace webapi.Controllers
{
    [EnableCors("AllowAny")]
    [Route("api/[controller]")]
    [ApiController]
    public class EnterprisesController : ControllerBase
    {
        private readonly TriangleContext _context;

        public EnterprisesController(TriangleContext context)
        {
            _context = context;
        }

        // GET: api/Enterprises
        [HttpGet]
        public async Task<IEnumerable<EnterpriseDTO>> GetEnterprise(string? name,string? category,string? address)
        {
            var result = _context.Enterprise.Select(x => new EnterpriseDTO
            {
                EnterpriseId = x.EnterpriseId,
                Address = x.Address.Substring(0,3),
                Category = x.Category,
                CompanyName = x.CompanyName,
                Img = x.Img,
                Info = x.Info.Substring(0,88),
                Employee = x.Employee

            });
            if (!string.IsNullOrWhiteSpace(name))
            {
                result = result.Where(a => a.CompanyName.Contains(name) || a.CompanyName.Contains(name));
            }
            if (!string.IsNullOrWhiteSpace(category))
            {
                result = result.Where(a => a.Category.Contains(category));
            }
            if (!string.IsNullOrWhiteSpace(address))
            {
                result = result.Where(a => a.Address.Contains(address));
            }

            return await Task.FromResult(result);
        }//完成 by jing

        // GET:     
        [HttpGet("{id}")]
        public async Task<IEnumerable<EnterpriseDTO>> GetEnterprise(int id)
        {
            var result = from van in _context.Vacancy
                         join etp in _context.Enterprise
                         on van.EnterpriseId equals etp.EnterpriseId
                         where van.EnterpriseId == id
                         select new EnterpriseDTO
                         {
                             VacancyId = van.VacancyId,
                         };
            return result;
        }//完成 by jing

        // PUT: api/Enterprises/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<string> PutEnterprise(int id, Enterprise enterprise)
        {

            Enterprise emp = await _context.Enterprise.FindAsync(id);
            emp.CompanyName = enterprise.CompanyName;
                emp.Category = enterprise.Category;
                emp.OpeningHours = enterprise.OpeningHours;
                emp.Welfare = enterprise.Welfare;
                emp.Telephone = enterprise.Telephone;
                emp.Info = enterprise.Info;
                emp.Email = enterprise.Email;
                emp.Employee = enterprise.Employee;
                emp.Address = enterprise.Address;
                emp.ContactPhone = enterprise.ContactPhone;
                emp.Fax = enterprise.Fax;
                emp.ContactTime = enterprise.ContactTime;
                emp.Principal = enterprise.Principal;
                emp.UniformNumbers = enterprise.UniformNumbers;
            _context.Entry(emp).State = EntityState.Modified;

                await _context.SaveChangesAsync();
            return "修改成功!";
        }

        [HttpGet("Id{Id}")]
        public async Task<IEnumerable<Enterprise>> EnterpriseDetails(int Id)
        {

            return _context.Enterprise.Where(x=>x.EnterpriseId== Id);
        }


        // POST: api/Enterprises
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<string> PostEnterprise([FromBody] Enterprise enterprise)
        {
            bool exists = _context.Enterprise.Any(e => e.Account == enterprise.Account);
            if (exists == true)
            {
                return "此帳號已註冊";
            }
            else
            {
                _context.Enterprise.Add(enterprise);
                await _context.SaveChangesAsync();

                return "註冊成功";
            }
        }

        [HttpPost("Login")]
        public async Task<IEnumerable<EnterpriseDTO>> LoginEnterprise([FromBody] EnterpriseDTO enterprise)
        {

            return _context.Enterprise.Where(login => login.Account.Contains(enterprise.Account) && login.Password == enterprise.Password).Select(login => new EnterpriseDTO
            {
                Principal = login.Principal,
                EnterpriseId = login.EnterpriseId,
                Account = login.Account,
                Password = login.Password,

            });

        }




        // DELETE: api/Enterprises/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEnterprise(int id)
        {
            var enterprise = await _context.Enterprise.FindAsync(id);
            if (enterprise == null)
            {
                return NotFound();
            }

            _context.Enterprise.Remove(enterprise);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool EnterpriseExists(int id)
        {
            return _context.Enterprise.Any(e => e.EnterpriseId == id);
        }
    }
}
