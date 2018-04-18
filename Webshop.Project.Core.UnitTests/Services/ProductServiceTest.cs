using System;
using System.Collections.Generic;
using System.Text;
using Webshop.Project.Core.Models;
using Webshop.Project.Core.Repositories.Implementations;
using Webshop.Project.Core.Services.Implementations;
using FakeItEasy;
using NUnit.Framework;
using Webshop.Repositories.Implementations;

namespace Webshop.Project.Core.UnitTests.Services
{
    class ProductServiceTest
    {
        private ProductService productService; //creates an instance of a class
        private IProductRepository productRepository;

        [SetUp]

        public void SetUp()
        {
            this.productRepository = A.Fake<IProductRepository>();
            this.productService = new ProductService(this.productRepository);
        }

        [Test]
        public void GetAll()
        {
            //Arrange

            var products = new List<ProductsViewModel>
            {
                new ProductsViewModel()
            };

            A.CallTo(() => this.productRepository.GetAll()).Returns(products);

            //Act

            var result = this.productService.GetAll();

            //Assert

            Assert.That(result, Is.EqualTo(products));
        }
    }
}
