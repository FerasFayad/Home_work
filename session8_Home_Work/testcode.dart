import 'dart:io';

void main() {
  List<int> numbers = inputNumbers(count: 6);

  while (true) {
    print('=======================================================');
    print('You List Of Numbers $numbers');
    print('=======================================================');
    print('[1] Get Largest Number');
    print('*******************************************************');
    print('[2] Get Smallest Number');
    print('*******************************************************');
    print('[3] Average');
    print('*******************************************************');
    print('[4] Numbers Above Average');
    print('*******************************************************');
    print('[5] Even Numbers');
    print('*******************************************************');
    print('[6] Odd Numbers');
    print('*******************************************************');
    print('[7] Difference (Largest - Smallest)');
    print('*******************************************************');
    print('[8] Even Count');
    print('*******************************************************');
    print('[9] Odd Count');
    print('*******************************************************');
    print('[10] Summary (Q7 Full Output)');
    print('*******************************************************');
    print('[11] Re-enter Numbers');
    print('*******************************************************');
    print('[0] Exit');

    int choice = readInt('choise Form The List : ');

    // نحسب الأشياء المشتركة مرة وحدة لكل اختيار (بدون تكرار كبير)
    int largestNumber = getLargestNumber(numbers: numbers);
    int smallestNumber = getSmallestNumber(numbers: numbers);
    double ave = getAverage(numbers: numbers);

    switch (choice) {
      case 1:
        print('The Latget Number Is : $largestNumber');
        print('=======================================================');
        break;

      case 2:
        print('The smallest Number Is : $smallestNumber');
        print('=======================================================');
        break;

      case 3:
        print('Average : $ave');
        print('=======================================================');
        break;

      case 4:
        print('Average : $ave');
        print('=======================================================');
        List<int> aboveAverage =
            getNumbersAboveAverage(numbers: numbers, average: ave);
        print('Numbers Above Average Are : $aboveAverage');
        print('=======================================================');
        break;

      case 5:
        List<int> evenNumbers = getEvenNumbers(numbers: numbers);
        print('Even Numbers are : $evenNumbers');
        print('=======================================================');
        break;

      case 6:
        List<int> oddNumbers = getOddNumbers(numbers: numbers);
        print('Odd Numbers are : $oddNumbers');
        print('=======================================================');
        break;

      case 7:
        int difference = largestNumber - smallestNumber;
        print('Largest Number Is : $largestNumber');
        print('Smallest Number Is : $smallestNumber');
        print('Difference Is : $difference');
        print('=======================================================');
        break;

      case 8:
        int evenCount = countEvenNumbers(numbers: numbers);
        print('Even Count Is : $evenCount');
        print('=======================================================');
        break;

      case 9:
        int oddCount = countOddNumbers(numbers: numbers);
        print('Odd Count Is : $oddCount');
        print('=======================================================');
        break;

      case 10:
        int difference = largestNumber - smallestNumber;
        List<int> aboveAverage =
            getNumbersAboveAverage(numbers: numbers, average: ave);
        int evenCount = countEvenNumbers(numbers: numbers);
        int oddCount = countOddNumbers(numbers: numbers);

        print('The Latget Number Is : $largestNumber');
        print('The smallest Number Is : $smallestNumber');
        print('Difference Is : $difference');
        print('Average : $ave');
        print('Numbers Above Average Are : $aboveAverage');
        print('Even Count Is : $evenCount');
        print('Odd Count Is : $oddCount');
        print('=======================================================');
        break;

      case 11:
        numbers = inputNumbers(count: 6);
        print('Numbers Updated ✅');
        print('=======================================================');
        break;

      case 0:
        return;

      default:
        print('Invalid choice, try again.');
        print('=======================================================');
        break;
    }
  }
}

int readInt(String message) {
  while (true) {
    stdout.write(message);
    String? input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print('Invalid input, please enter a number.');
      continue;
    }

    int? value = int.tryParse(input.trim());
    if (value == null) {
      print('Invalid input, please enter a valid integer.');
      continue;
    }

    return value;
  }
}

List<int> inputNumbers({required int count}) => List.generate(count, (number) {
      return readInt('Enter Number ${number + 1} : ');
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

int countEvenNumbers({required List<int> numbers}) =>
    numbers.where((n) => n.isEven).length;

int countOddNumbers({required List<int> numbers}) =>
    numbers.where((n) => n.isOdd).length;
