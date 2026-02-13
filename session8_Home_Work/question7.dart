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
  print('Even Count Is : ${eveNumbers.length}');
  print('=======================================================');

  print('=======================================================');
  List<int> oddNumbers = getOddNumbers(numbers: numbers);
  print('Odd Numbers are : $oddNumbers');
  print('Odd Count Is : ${oddNumbers.length}');
  print('=======================================================');

  print('=======================================================');
}

// List<int> inputNumbers() {
//   stdout.write('Enter Number : ');
//   String input = stdin.readLineSync()!;
//   return input.split('').map((element) => int.parse(element)).toList();
// }

List<int> inputNumbers() => List.generate(6, (number) {
      stdout.write('Enter Number ${number + 1} : ');
      return int.parse(stdin.readLineSync()!);
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
