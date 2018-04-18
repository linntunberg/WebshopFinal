using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Webshop.Project.Core.Models;
using MySql.Data.MySqlClient;
using Dapper;
using Microsoft.Extensions.Configuration;
using Webshop.Project.Core;
using Webshop.Project.Core.Services.Implementations;
using Webshop.Project.Core.Repositories.Implementations;
using webshop.Repositories.Implementations;

namespace Webshop.Controllers
{
    public class CheckoutController : Controller
    {

        public string CartId { get; set; }

        public readonly CheckoutService checkoutService;

        public CheckoutController(IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("ConnectionString");
            this.checkoutService = new CheckoutService(
                new CheckoutRepository(connectionString));
        }

        public ActionResult Index()
        {

            if (!this.Request.Cookies.ContainsKey("CartId"))
            {
                return RedirectToAction("Index", "Products");
            }

            var cartId = GetOrCreateCartId();

            var cartItems = this.checkoutService.GetCart(cartId);

            return View(cartItems);
        }

        [HttpPost]
        public ActionResult Order(string FirstName, string LastName, string Email, string Address, string Country, int Zipcode, int CardNumber, string CartId, int Sum)
        {

            this.checkoutService.Order(FirstName, LastName, Email, Address, Country, Zipcode, CardNumber, CartId, Sum);

            this.Response.Cookies.Delete("CartId");

            return RedirectToAction("Index", "Products");
        }


        private string GetOrCreateCartId()
        {
            if (this.Request.Cookies.ContainsKey("CartId"))
            {
                return this.Request.Cookies["CartId"];
            }
            var cartId = Guid.NewGuid().ToString();
            this.Response.Cookies.Append("CartId", cartId);
            return cartId;
        }
    }
}
