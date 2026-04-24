import 'dart:io';

void main() {
  int count = 8;
  List<int> numbers = inputNumbers(count);
  print(numbers);
  line();

  int largestNumber = getLargestNumber(numbers: numbers);
  print('The Latget Number Is : $largestNumber');
  line();

  int smallesNumber = getSmallestNumber(numbers: numbers);
  print('The smallest Number Is : $smallesNumber');
  line();

  int difference = largestNumber - smallesNumber;
  print('Difference Is : $difference');
  line();

  double ave = getAverage(numbers: numbers);
  print('Average : $ave');
  line();

  List<int> aboveAverage =
      getNumbersAboveAverage(numbers: numbers, average: ave);
  print('Number Above Average : $aboveAverage');
  line();

  List<int> eveNumbers = getEvenNumbers(numbers: numbers);
  print('Even Numbers are : $eveNumbers');
  print('Even Count Is : ${eveNumbers.length}');
  line();

  List<int> oddNumbers = getOddNumbers(numbers: numbers);
  print('Odd Numbers are : $oddNumbers');
  print('Odd Count Is : ${oddNumbers.length}');
  line();
}

void line() => print('=======================================================');

List<int> inputNumbers(int count) => List.generate(count, (number) {
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
