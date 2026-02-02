/*Q8. Digits Operations 
- Ask the user for a number (e.g., 528).
- Print the sum of its digits and also print the largest digit. */
 import 'dart:io';

void main() {
  // Step 1: Input
  int number = getNumber();

  // Step 2: Convert to digits
  List<int> digits = extractDigits(number);

  // Step 3: Operations
  int sumOfDigits = calculateSum(digits);
  int largestDigit = getMaxDigit(digits);

  // Step 4: Output
  print("\nDigits: ${digits.join(', ')}");
  print("Sum of digits: $sumOfDigits");
  print("Largest digit: $largestDigit");
}

//======================= Requirement One ===============================//
int getNumber() {
  stdout.write("Enter a number: ");
  return int.parse(stdin.readLineSync()!);
}

//======================= Requirement Two ==============================//
List<int> extractDigits(int number) {
  return number
      .toString()
      .split('')
      .map((char) => int.parse(char))
      .toList();
}

//======================= Requirement Three ============================//
int calculateSum(List<int> digits) {
  return digits.fold(0, (total, current) => total + current);
}

//======================= Requirement Four =============================//
int getMaxDigit(List<int> digits) {
  return digits.reduce((a, b) => a > b ? a : b);
}
