using System.Linq;
using webshop.Repositories.Implementations;
using Webshop.Project.Core.Models;


namespace Webshop.Project.Core.Services.Implementations
{
    public class CheckoutService
    {
        private readonly ICheckoutRepository checkoutRepository;


        public CheckoutService(ICheckoutRepository checkoutRepository)
        {
            this.checkoutRepository = checkoutRepository;
        }

        public CheckoutViewModel GetCart(string cartId)
        {
            var cartItems = checkoutRepository.GetCart(cartId);

            //sums up the total cost
            var sum = cartItems.Select(c => c.Price * c.Quantity).Sum();

            //put all of the items and the total cost into a new view model 
            var checkoutItems = new CheckoutViewModel();
            checkoutItems.Cart = cartItems;
            checkoutItems.Sum = sum;

            return checkoutItems;
        }
        public void Order(string FirstName, string LastName, string Email, string Address, string Country, int Zipcode, int CardNumber, string CartId, int Sum)
        {
            this.checkoutRepository.Order(FirstName, LastName, Email, Address, Country, Zipcode, CardNumber, CartId, Sum);
        }
    }
}


