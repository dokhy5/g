class GPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shoppingCost = getShoppingCost(location);
    double totalPrice = productPrice + taxAmount + shoppingCost;
    return totalPrice;

  }
  static String calculateShoppingCost(double productPrice, String location) {
    double shoppingCost = getShoppingCost(location);
    return shoppingCost.toStringAsFixed(2);
  }
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }
  static double getTaxRateForLocation(String location) {
    return 0.10;

  }
  static double getShoppingCost(String location) {
    return 5.00;
  }

  // static double calculateCartTotal(CartModel cart){
  //   return cart.items.map((e)=>e.price).fold((previousPrice, currentPrice) => previousPrice + currentPrice);
  // }
}