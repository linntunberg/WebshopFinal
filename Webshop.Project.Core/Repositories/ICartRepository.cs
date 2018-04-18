using System.Collections.Generic;
using Webshop.Project.Core.Models;


namespace Webshop.Project.Core.Repositories.Implementations
{
    public interface ICartRepository
    {
        List<CartViewModel> GetCart(string cartId);

        bool InsertCart(int id, string cartId, int quantity);

    }
}