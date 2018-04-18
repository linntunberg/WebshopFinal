using System.Collections.Generic;
using System.Linq;
using Dapper;
using MySql.Data.MySqlClient;
using Webshop.Project.Core.Models;

namespace Webshop.Project.Core.Repositories.Implementations
{
    public class CartRepository
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

        public void InsertCart(int id, string cartId, int quantity)
        {
            using (var connection = new MySqlConnection(this.connectionString))
            {
                   connection.Execute("INSERT INTO Carts (productId, cartId, quantity) VALUES(@id, @cartId, @quantity)", new { id, cartId, quantity });
                }
        } 
    }
}

