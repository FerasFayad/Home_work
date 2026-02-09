/*
Q8 Ask the user to input a sentence.
 Print all the words that appear only once in the sentence.
 Also print the total count of unique words. */
import 'dart:io';

void main() {
  stdout.write('Enter a sentence: ');
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.toLowerCase().trim().split(RegExp(r'\s+'));

  Map<String, int> wordCount = {};

  for (String word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  print('Words that appear only once:');
  int uniqueCount = 0;

  wordCount.forEach((word, count) {
    if (count == 1) {
      print(word);
      uniqueCount++;
    }
  });

  print('Total unique words count: $uniqueCount');
}
