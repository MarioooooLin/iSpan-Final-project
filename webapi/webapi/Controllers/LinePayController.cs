using System;
using webapi.Providers;
using webapi.Domain;
using Microsoft.AspNetCore.Mvc;
using webapi.LinePaymentDTO;
using Microsoft.AspNetCore.Cors;
using System.ComponentModel.DataAnnotations;
using System.Net.Mime;


namespace webapi.Controllers
{
    [EnableCors("AllowAny")]
    [ApiController]
    [Route("api/[Controller]")]
    public class LinePayController : ControllerBase
    {
        private readonly LinePayService _linePayService;
        public LinePayController()
        {
            _linePayService = new LinePayService();
        }

        [HttpPost("Create")]
        public async Task<PaymentResponseDto> CreatePayment(PaymentRequestDto dto)
        {
            return await _linePayService.SendPaymentRequest(dto);
        }

        [HttpPost("Confirm")]
        public async Task<PaymentConfirmResponseDto> ConfirmPayment([FromQuery] string transactionId, [FromQuery] string orderId, PaymentConfirmDto dto)
        {
            return await _linePayService.ConfirmPayment(transactionId, orderId, dto);
        }

        [HttpGet("Cancel")]
        public async void CancelTransaction([FromQuery] string transactionId)
        {
            _linePayService.TransactionCancel(transactionId);
        }
    }
}

