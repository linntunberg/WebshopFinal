using System;
using System.Collections.Generic;
using System.Linq;
using Dapper;
using MySql.Data.MySqlClient;
using Webshop.Project.Core.Models;

namespace Webshop.Project.Core.Repositories.Implementations
{
    public class CartRepository : ICartRepository
    {
        private readonly string connectionString;

        public CartRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }
        public List<CartViewModel> GetCart(string cartId)
        {
            using (var connection = new MySqlConnection(this.connectionString))
            {

                return connection.Query<CartViewModel>("SELECT carts.cartId, sum(carts.quantity) as quantity, carts.productId, products.price, products.item, products.image FROM products INNER JOIN carts ON carts.productId = products.id WHERE carts.cartId = @CartId GROUP BY carts.productId",
                        new { cartId }).ToList();
            }
        }

        public bool InsertCart(int id, string cartId, int quantity)
        {
            try
            {

                using (var connection = new MySqlConnection(this.connectionString))
                {
                    connection.Execute("INSERT INTO Carts (productId, cartId, quantity) VALUES(@id, @cartId, @quantity)", new { id, cartId, quantity });
                    return true;
                }
            }
            catch(Exception e)
            {
                throw new Exception(e.Message);
            }
        } 
    }
}

