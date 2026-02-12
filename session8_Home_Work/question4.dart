/*Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
 - In main(), demonstrate setting values and printing the original and discounted price.
 */
void main() {
  Product product = Product();

  product.name = 'Feras';
  product.price = 230;

  print('Original price: ${product.price}');
  print('Discounted price: ${product.discountedPrice}');
}

class Product {
  String _name = '';
  double _price = 0;

  set name(String name) =>
      name.isNotEmpty ? _name = name : print('Empty Value');

  set price(double price) =>
      price > 0 ? _price = price : print('Price Can Not Can not be negative');

  String get name => _name;
  double get price => _price;

  double get discountedPrice => _price - (_price * 0.1);
}
