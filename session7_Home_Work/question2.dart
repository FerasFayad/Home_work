/*Q2
 Create a class Temperature with an attribute celsius.
 Add a method toFahrenheit() that returns the temperature in Fahrenheit.
 In main(), create an object and print the converted value.
 */

void main() {
  Temperature temperature1 = Temperature();
  temperature1.celsius = 25;

  double result = temperature1.toFahrenheit();
  print(result);
}

class Temperature {
  double? celsius;

  double toFahrenheit() {
    //°F = (°C × 9/5) + 32
    return (celsius! * 9 / 5) + 32;
  }
}
