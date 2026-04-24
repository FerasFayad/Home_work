import 'dart:io';

const String kLine = '=======================================================';
const String kStars = '*******************************************************';
const int kCount = 6;

void main() {
  var numbers = inputNumbers(count: kCount);

  while (true) {
    print(kLine);
    print('You List Of Numbers $numbers');
    print(kLine);
    showMenu();

    final choice = readInt('choise Form The List : ');

    switch (choice) {
      case 1:
        runAction(
            'The Latget Number Is', () => getLargestNumber(numbers: numbers));
        break;

      case 2:
        runAction('The smallest Number Is',
            () => getSmallestNumber(numbers: numbers));
        break;

      case 3:
        runAction('Average', () => getAverage(numbers: numbers));
        break;

      case 4:
        final ave = getAverage(numbers: numbers);
        runAction('Average', () => ave);
        runAction(
          'Numbers Above Average Are',
          () => getNumbersAboveAverage(numbers: numbers, average: ave),
        );
        break;

      case 5:
        runAction('Even Numbers are', () => getEvenNumbers(numbers: numbers));
        break;

      case 6:
        runAction('Odd Numbers are', () => getOddNumbers(numbers: numbers));
        break;

      case 7:
        runAction('Difference (Largest - Smallest)', () {
          final largest = getLargestNumber(numbers: numbers);
          final smallest = getSmallestNumber(numbers: numbers);
          return largest - smallest;
        });
        break;

      case 8:
        runAction('Even Count Is', () => countEvenNumbers(numbers: numbers));
        break;

      case 9:
        runAction('Odd Count Is', () => countOddNumbers(numbers: numbers));
        break;

      case 10:
        printSummary(numbers);
        break;

      case 11:
        numbers = inputNumbers(count: kCount);
        runAction('Numbers Updated ✅', () => '');
        break;

      case 0:
        return;

      default:
        runAction('Invalid choice, try again.', () => '');
        break;
    }
  }
}

void showMenu() {
  print('[1] Get Largest Number');
  print(kStars);
  print('[2] Get Smallest Number');
  print(kStars);
  print('[3] Average');
  print(kStars);
  print('[4] Numbers Above Average');
  print(kStars);
  print('[5] Even Numbers');
  print(kStars);
  print('[6] Odd Numbers');
  print(kStars);
  print('[7] Difference (Largest - Smallest)');
  print(kStars);
  print('[8] Even Count');
  print(kStars);
  print('[9] Odd Count');
  print(kStars);
  print('[10] Summary (Q7 Full Output)');
  print(kStars);
  print('[11] Re-enter Numbers');
  print(kStars);
  print('[0] Exit');
}

void printResult(String title, Object? value) {
  print('$title : $value');
  print(kLine);
}

void runAction(String title, Object? Function() action) {
  final result = action();
  printResult(title, result);
}

void printSummary(List<int> numbers) {
  final largest = getLargestNumber(numbers: numbers);
  final smallest = getSmallestNumber(numbers: numbers);
  final difference = largest - smallest;

  final ave = getAverage(numbers: numbers);
  final aboveAverage = getNumbersAboveAverage(numbers: numbers, average: ave);

  final evenCount = countEvenNumbers(numbers: numbers);
  final oddCount = countOddNumbers(numbers: numbers);

  printResult('The Latget Number Is', largest);
  printResult('The smallest Number Is', smallest);
  printResult('Difference Is', difference);
  printResult('Average', ave);
  printResult('Numbers Above Average Are', aboveAverage);
  printResult('Even Count Is', evenCount);
  printResult('Odd Count Is', oddCount);
}

int readInt(String message) {
  while (true) {
    stdout.write(message);
    final input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print('Invalid input, please enter a number.');
      continue;
    }

    final value = int.tryParse(input.trim());
    if (value == null) {
      print('Invalid input, please enter a valid integer.');
      continue;
    }

    return value;
  }
}

List<int> inputNumbers({required int count}) => List.generate(count, (i) {
      return readInt('Enter Number ${i + 1} : ');
    });

int getLargestNumber({required List<int> numbers}) =>
    numbers.reduce((a, b) => a >= b ? a : b);

int getSmallestNumber({required List<int> numbers}) =>
    numbers.reduce((a, b) => a <= b ? a : b);

double getAverage({required List<int> numbers}) {
  final total = numbers.reduce((a, b) => a + b);
  return total / numbers.length;
}

List<int> getNumbersAboveAverage(
        {required List<int> numbers, required double average}) =>
    numbers.where((x) => x > average).toList();

List<int> getEvenNumbers({required List<int> numbers}) =>
    numbers.where((x) => x.isEven).toList();

List<int> getOddNumbers({required List<int> numbers}) =>
    numbers.where((x) => x.isOdd).toList();

int countEvenNumbers({required List<int> numbers}) =>
    numbers.where((x) => x.isEven).length;

int countOddNumbers({required List<int> numbers}) =>
    numbers.where((x) => x.isOdd).length;
