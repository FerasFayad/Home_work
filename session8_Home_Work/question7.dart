/*
Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
*/

import 'dart:io';

void main(List<String> args) {
  List<int> input = inputNumbers();
  print(input);
}

List<int> inputNumbers() {
  String input = stdin.readLineSync()!;
  if (!RegExp(r'^\d+$').hasMatch(input)) {
    print('Invalid input');
    return [];
  }
  return input.split('').map(int.parse).toList();
}
