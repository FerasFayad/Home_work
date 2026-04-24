/*Q
 Create a class City with attributes name and population.
  In main(), create two city objects and print their details. */

void main() {
  City city1 = City();
  city1.name = 'Gaza';
  city1.population = 2000000;

  City city2 = City();
  city2.name = 'Cairo';
  city2.population = 22000000;

  print('City: ${city1.name}, Population: ${city1.population}');
  print('City: ${city2.name}, Population: ${city2.population}');
}

class City {
  String? name;
  int? population;
}
