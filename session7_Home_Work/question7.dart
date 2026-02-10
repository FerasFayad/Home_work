/*
Q7 
Ask the user for a number (e.g., 9875).
 Keep summing its digits until the result is a single digit.
 Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
 */
import 'dart:io';

void main() {
  String number = inputNumber();
  List<String> numbers = splitNumber(number);

  int result = calculateDigits(numbers);

  print('Final single-digit result: $result');
}

String inputNumber() {
  while (true) {
    stdout.write('Enter Number : ');

    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print('❌ Please enter a value.');
      continue;
    } else if (!RegExp(r'^\d+$').hasMatch(input)) {
      print('❌ Numbers only! Try again.');
      continue;
    }
    return input;
  }
}

List<String> splitNumber(String number) {
  return number.split('');
}

int calculateDigits(List<String> numbers) {
  int sum = 0;

  while (numbers.length > 1) {
    sum = 0;

    for (var number in numbers) {
      sum += int.parse(number);
    }

    numbers = splitNumber(sum.toString());
  }

  return int.parse(numbers.first);
}
