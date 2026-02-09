/*Q
 Create a class City with attributes name and population.
  In main(), create two city objects and print their details. */

void main() {
  City city1 = City();
  city1.name = 'Gaza';
  city1.population = '';
  City city2 = City();
  city1.name = 'Cario';
  city2.population = '';
}

class City {
  String? name;
  String? population;
}
