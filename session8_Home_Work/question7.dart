/*
Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
*/

import 'dart:io';

void main() {
  List<int> numbers = inputNumbers();
  print(numbers);
  print('=======================================================');
  int largestNumber = getLargestNumber(numbers: numbers);
  print('The Latget Number Is : $largestNumber');
  print('=======================================================');
  int smallesNumber = getSmallestNumber(numbers: numbers);
  print('The smallest Number Is : $smallesNumber');
  print('=======================================================');
  //✅ Added: difference between largest and smallest
  int difference = largestNumber - smallesNumber;
  print('Difference Is : $difference');
  print('=======================================================');
  double ave = getAverage(numbers: numbers);
  print('Average : $ave');
  print('=======================================================');
  List<int> aboveAverage =
      getNumbersAboveAverage(numbers: numbers, average: ave);
  print('Number Above Average : $aboveAverage');
  print('=======================================================');
  List<int> eveNumbers = getEvenNumbers(numbers: numbers);
  print('Even Numbers are : $eveNumbers');
  print('=======================================================');
  List<int> oddNumbers = getOddNumbers(numbers: numbers);
  print('Odd Numbers are : $oddNumbers');
  print('=======================================================');
}

List<int> inputNumbers() => List.generate(6, (number) {
      while (true) {
        stdout.write('Enter Number ${number + 1} : ');
        String? input = stdin.readLineSync();

        if (input == null || input.trim().isEmpty) {
          print('Invalid input, please enter a number.');
          continue;
        }

        int? value = int.tryParse(input);
        if (value == null) {
          print('Invalid input, please enter a valid integer.');
          continue;
        }

        return value;
      }
    });

int getLargestNumber({required List<int> numbers}) => numbers
    .reduce((brevNum, currNum) => brevNum >= currNum ? brevNum : currNum);

int getSmallestNumber({required List<int> numbers}) =>
    numbers.reduce((brevNum, currNum) => brevNum < currNum ? brevNum : currNum);

double getAverage({required List<int> numbers}) {
  int total = numbers.reduce((num1, num2) => num1 + num2);
  return total / numbers.length;
}

List<int> getNumbersAboveAverage(
        {required List<int> numbers, required double average}) =>
    numbers.where((element) => element > average).toList();

List<int> getEvenNumbers({required List<int> numbers}) =>
    numbers.where((number) => number.isEven).toList();

List<int> getOddNumbers({required List<int> numbers}) =>
    numbers.where((number) => number.isOdd).toList();

// int averageTest({required List<int> numbers}) =>
//     numbers.reduce((num1, num2) => ((num1 + num2) / numbers.length).toInt());
