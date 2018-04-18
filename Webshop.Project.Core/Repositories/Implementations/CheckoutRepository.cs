using System;
using System.Collections.Generic;
using System.Linq;
using Dapper;
using MySql.Data.MySqlClient;
using webshop.Repositories.Implementations;
using Webshop.Project.Core.Models;

namespace Webshop.Project.Core.Repositories.Implementations
{
    public class CheckoutRepository : ICheckoutRepository
    {

        private readonly string connectionString;

        public CheckoutRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<CartViewModel> GetCart(string cartId)
        {
            using (var connection = new MySqlConnection(this.connectionString))
            {
                    //1. get all products that are currently in the cart
                    return connection.Query<CartViewModel>("SELECT carts.cartId, sum(carts.quantity) as quantity, carts.productId, products.price, products.item, products.image FROM products INNER JOIN carts ON carts.productId = products.id WHERE carts.cartId = @cartId GROUP BY carts.productId; ",
                            new { cartId }).ToList();
            }
        }

        public bool Order(string FirstName, string LastName, string Email, string Address, string Country, int Zipcode, int CardNumber, string CartId, int Sum)
        {
            using (var connection = new MySqlConnection(this.connectionString))
            {

                try
                {
                    //2. inserts order into the database 
                    connection.Execute(
                        "INSERT INTO Orders(FirstName, LastName, Email, Address, Country, Zipcode, CardNumber, Sum, CartId) VALUES(@firstname, @lastname, @email, @address, @country, @zipcode, @cardnumber, @sum, @cartId)",
                        new { FirstName, LastName, Email, Address, Country, Zipcode, CardNumber, CartId, Sum });

                    //3. gets the order that we just inserted so we know the id of that specific order in the database
                    var orderInfo = connection.Query<OrderViewModel>("Select * from Orders where Orders.CartId = @CartId;",
                                                                 new { CartId }).ToList();
                    var orderId = orderInfo[0].Id;

                    //4. get everything from the cart
                    var checkoutItems = connection.Query<CartViewModel>(
                        "SELECT carts.CartId, Sum(carts.quantity) as quantity, carts.productId, products.price, products.item, products.image FROM products INNER JOIN carts ON carts.productId = products.id WHERE carts.cartId = @cartId GROUP BY carts.productId;",
                        new { CartId }).ToList();

                    //5. loops through the checkoutitems list and inserts them one by one into the database (orderrows)
                    foreach (var item in checkoutItems)
                    {

                        connection.Execute(
                            "INSERT INTO OrderRows(OrderId, ProductId, Item, Price, Quantity) VALUES(@orderId, @productId, @item, @price, @quantity)",
                            new { orderId, item.ProductId, item.Item, item.Price, item.Quantity });
                    }

                    return true;

                }
                catch (Exception)
                {
                    return false;
                }

            }
        }

    }
}
