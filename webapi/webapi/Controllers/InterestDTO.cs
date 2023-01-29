namespace webapi.Controllers
{
    public class InterestDTO
    {
        internal int? EnterpriseId { get; set; }

        public int? InterestStatus { get; set; }
        public string? CompanyName { get; set; }
        public string? WorkName { get; set; }
        public int? CandidateId { get; internal set; }
        public int? VacancyId { get; internal set; }
    }
}