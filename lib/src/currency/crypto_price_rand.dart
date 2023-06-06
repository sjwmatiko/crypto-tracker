import 'dart:math';

String generateCryptoPrice() {
  Random random = Random();
  double price = random.nextDouble() *
      10000; // Generate a random price between 0 and 10000
  price = double.parse(
      price.toStringAsFixed(2)); // Round the price to 2 decimal places
  return '\$${price.toString()}'; // Format the price as a string with a dollar sign
}
