using NUnit.Framework;
using Webshop.Project.Core.Services.Implementations;
using Webshop.Project.Core.Repositories.Implementations;
using Webshop.Project.Core.Models;
using FakeItEasy;
using System.Collections.Generic;

namespace Webshop.Project.Core.UnitTests
{
    public class CartServiceTest
    {
        private CartService cartService;
        private ICartRepository cartRepository;

        [SetUp]

        public void SetUp()
        {
            this.cartRepository = A.Fake<ICartRepository>();
            this.cartService = new CartService(this.cartRepository);
        }

        [Test]
        public void GetCart_GivenValidId_ReturnsExpectedCart()
        {

            //Arrange
            const string cartId = "guid";
            var expectedCart = new List<CartViewModel> { new CartViewModel { CartId = cartId } };

            A.CallTo(() => this.cartRepository.GetCart(cartId)).Returns(expectedCart);

            //Act
            var result = this.cartService.GetCart(cartId);

            //Assert
            Assert.That(result, Is.EqualTo(expectedCart));

        }
    }
}