using System;
using System.Text;
using System.Collections.Generic;
using Webshop.Project.Core.Models;
namespace webshop.Repositories.Implementations
{
    public interface ICheckoutRepository
    {
        List<CartViewModel> GetCart(string cartId);

        bool Order(string FirstName, string LastName, string Email, string Address, string Country, int Zipcode, int CardNumber, string CartId, int Sum);
        // ReceiptInfoModel GetOrderInfo(int orderId);
    }
}