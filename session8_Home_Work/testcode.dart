import 'dart:io';

void main() {
  List<int> numbers = inputNumbers();

  while (true) {
    print('=======================================================');
    print('You List Of Numbers $numbers');
    print('=======================================================');
    print('[1] Get Largest Numbers');
    print('*******************************************************');
    print('[2] Get smallest Numbers');
    print('*******************************************************');
    print('[3] Average');
    print('*******************************************************');
    print('[4] Numbers Above Average');
    print('*******************************************************');
    print('[5] Even Numbers');
    print('*******************************************************');
    print('[6] Odd Numbers');
    print('*******************************************************');
    print('[7] Exit');
    stdout.write('choise Form The List : ');
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        int largestNumber = getLargestNumber(numbers: numbers);
        print('The Latget Number Is : $largestNumber');
        print('=======================================================');
        break;
      case 2:
        int smallesNumber = getSmallestNumber(numbers: numbers);
        print('The smallest Number Is : $smallesNumber');
        print('=======================================================');
        break;
      case 3:
        double ave = getAverage(numbers: numbers);
        print('Average : $ave');
        print('=======================================================');
        break;
      case 4:
        double ave = getAverage(numbers: numbers);
        print('Average : $ave');
        print('=======================================================');
        List<int> aboveAverage =
            getNumbersAboveAverage(numbers: numbers, average: ave);
        print('Numbers Above Average Are : $aboveAverage');
        print('=======================================================');
        break;
      case 5:
        Set<int> eveNumbers = getEvenNumbers(numbers: numbers);
        print('Even Numbers are : $eveNumbers');
        print('=======================================================');
        break;
      case 6:
        Set<int> oddNumbers = getOddNumbers(numbers: numbers);
        print('Odd Numbers are : $oddNumbers');
        print('=======================================================');
        break;
      case 7:
        return;
      default:
        print('Thank You');
        print('=======================================================');
        return;
    }
  }
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

Set<int> getEvenNumbers({required List<int> numbers}) =>
    numbers.where((number) => number.isEven).toSet();

Set<int> getOddNumbers({required List<int> numbers}) =>
    numbers.where((number) => number.isOdd).toSet();

// int averageTest({required List<int> numbers}) =>
//     numbers.reduce((num1, num2) => ((num1 + num2) / numbers.length).toInt());
