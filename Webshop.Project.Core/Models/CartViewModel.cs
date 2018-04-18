﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Webshop.Project.Core.Models
{
    public class CartViewModel
    {
        public string CartId { get; set; }
        public int Quantity { get; set; }
        public int ProductId { get; set; }
        public int Price { get; set; }
        public string Item { get; set; }
        public string Image { get; set; }
    }
}
