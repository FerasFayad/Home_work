/* 2
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention). 
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
*/

void main() {
  Car car1 = Car(); //invalid one
  car1.brand = '';
  car1.year = 1800;
  Car car2 = Car(); //valid one
  car2.brand = 'BMW';
  car2.year = 2012;
}

class Car {
  String _brand = '';
  int _year = 0;

  set brand(String brand) =>
      brand.isEmpty ? print('Invalid Value') : _brand = brand;

  set year(int year) => year < 1886 ? print('Invalid Value') : _year = year;

  String get brand => _brand;
  int get year => _year;
}
