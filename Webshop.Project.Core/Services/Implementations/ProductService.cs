using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Webshop.Repositories.Implementations;
using Webshop.Repositories;
using Webshop.Project.Core.Models;
using Webshop.Project.Core.Repositories;

namespace Webshop.Project.Core.Services.Implementations
{
    public class ProductService
    {
        private readonly IProductRepository productRepository;
        public ProductService(IProductRepository productRepository)
        {
            this.productRepository = productRepository;
        }
        public List<ProductsViewModel> GetAll()
        {
            return productRepository.GetAll();
        } 
    }
}
