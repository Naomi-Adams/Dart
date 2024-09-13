void main() {
  List<double> itemPrices = [15.0, 25.0, 5.0, 50.0, 8.0];

  List<double> filteredItems = itemPrices.where((price) => price >= 10).toList();

  List<double> discountedItems = applyDiscount(filteredItems, (price) => price * 0.9);

  double totalPrice = calculateTotal(discountedItems, taxRate: 0.07);

  double finalPrice = totalPrice * (1 - calculateFactorialDiscount(discountedItems.length) / 100);

  print('Final price after all discounts and tax: \$${finalPrice.toStringAsFixed(2)}');
}

double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double total = prices.reduce((a, b) => a + b);
  return total * (1 + taxRate);
}

List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

double calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}
