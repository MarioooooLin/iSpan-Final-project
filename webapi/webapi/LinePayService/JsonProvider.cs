using webapi.LinePaymentDTO;

namespace webapi.Domain
{
    internal class JsonProvider
    {
        public JsonProvider()
        {
        }

        internal object Deserialize<T>(string v)
        {
            throw new NotImplementedException();
        }

        internal object Serialize(PaymentRequestDto dto)
        {
            throw new NotImplementedException();
        }

        internal object Serialize(PaymentConfirmDto dto)
        {
            throw new NotImplementedException();
        }
    }
}