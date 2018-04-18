using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Webshop.Project.Core.Models
{
    public class ProductsViewModel
    {
        public int Id { get; set; }
        public string Item { get; set; }
        public int Price { get; set; }
        public string Image { get; set; }
    }
}
