using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Webshop.Project.Core.Models;

namespace Webshop.Repositories.Implementations
{
    public interface IProductRepository
    {
        List<ProductsViewModel> GetAll();
    }
}
