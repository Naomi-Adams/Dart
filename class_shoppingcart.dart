void main() {
  ShoppingCart cart = ShoppingCart();
  cart.addItem(100.0);
  cart.addItem(200.0);
  print('Total Price: \$${cart.getTotalPrice()}');

  DiscountedCart discountedCart = DiscountedCart(0.1);
  discountedCart.addItem(100.0);
  discountedCart.addItem(200.0);
  print('Total Price after Discount: \$${discountedCart.getTotalPriceAfterDiscount()}');
}

class ShoppingCart {
  List<double> _itemPrices = [];

  void addItem(double price) {
    _itemPrices.add(price);
  }

  double getTotalPrice() {
    return _itemPrices.reduce((a, b) => a + b);
  }
}

class DiscountedCart extends ShoppingCart {
  double discountRate;

  DiscountedCart(this.discountRate);

  double getTotalPriceAfterDiscount() {
    double totalPrice = getTotalPrice();
    return totalPrice * (1 - discountRate);
  }
}
