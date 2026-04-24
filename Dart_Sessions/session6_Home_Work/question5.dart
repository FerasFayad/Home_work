/*Q5. Find Second Largest Number
- Ask the user to enter 6 numbers in a list.
- Print the largest number and the second largest number (without sorting the list).
 */
import 'dart:io';

void main() {
  List<int> numbers = getNumbers();
  print(numbers);
  List<int> maxAndSceoundMaxNumbers = getLargestSecondNumber(numbers);
  print('The Largest Number : ${maxAndSceoundMaxNumbers[0]}');
  print('The Second Largest Number : ${maxAndSceoundMaxNumbers[1]}');
}

List<int> getNumbers() {
  return List.generate(6, (index) {
    stdout.write('Enter number ${index + 1} :');
    return int.parse(stdin.readLineSync()!);
  });
}

List<int> getLargestSecondNumber(List<int> numbers) {
  if (numbers.length < 2) {
    throw Exception('List must contain at least 2 numbers');
  }

  final result = numbers.skip(1).fold<List<int>>(
    [numbers[0], numbers[0]], // [max, secondMax]
    (acc, curr) {
      int max = acc[0];
      int secondMax = acc[1];

      if (curr > max) {
        secondMax = max;
        max = curr;
      } else if (curr > secondMax && curr != max) {
        secondMax = curr;
      }

      return [max, secondMax];
    },
  );

  return result;
}
