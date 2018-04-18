using System.Collections.Generic;
using Webshop.Project.Core.Models;
using Webshop.Project.Core.Repositories.Implementations;

namespace Webshop.Project.Core.Services.Implementations
{
    public class CartService
    {
        private readonly CartRepository cartRepository;
        public CartService(CartRepository cartRepository)
        {
            this.cartRepository = cartRepository;
        }
        public List<CartViewModel> GetCart(string cartId)
        {
            return cartRepository.GetCart(cartId);
        }
        public void InsertCart (int id, string cartId, int quantity)
        {
            cartRepository.InsertCart(id, cartId, quantity);
        }
    }
}


