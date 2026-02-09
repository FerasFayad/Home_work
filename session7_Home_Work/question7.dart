/*
Q7 
Ask the user for a number (e.g., 9875).
 Keep summing its digits until the result is a single digit.
 Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
 */
import 'dart:io';

void main() {}
String inputNumber() {
  String? input;
  while (true) {
    if (input == null) break;

    try {
      input = stdin.readLineSync()!;
    } catch (e) {
      print(e);
    }
  }
  return input!;
}

List<String> splitNumber(String number) {
  return number.trim().split(RegExp(r'/s+'));
}
