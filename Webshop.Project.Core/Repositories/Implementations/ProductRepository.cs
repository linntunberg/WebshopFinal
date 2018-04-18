using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Webshop.Project.Core.Models;
using MySql.Data.MySqlClient;
using Dapper;
using Webshop.Repositories.Implementations;

namespace Webshop.Project.Core.Models
{
    public class ProductRepository : IProductRepository
    {
        private readonly string connectionString;
        
        public ProductRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<ProductsViewModel> GetAll()
        {
            using (var connection = new MySqlConnection(this.connectionString))
            {
                return connection.Query<ProductsViewModel>("select * from products").ToList();
               
            }
        }
    }
}
