/*
Q8 Ask the user to input a sentence.
 Print all the words that appear only once in the sentence.
 Also print the total count of unique words. */
import 'dart:io';

import 'dart:io';

void main() {
  String sentence = readSentence();
  List<String> words = extractWords(sentence);
  Map<String, int> wordCount = countWords(words);
  int uniqueCount = printUniqueWords(wordCount);

  print('Total unique words count: $uniqueCount');
}

String readSentence() {
  stdout.write('Enter a sentence: ');
  return stdin.readLineSync()!;
}

List<String> extractWords(String sentence) {
  return sentence.toLowerCase().trim().split(RegExp(r'\s+'));
}

Map<String, int> countWords(List<String> words) {
  Map<String, int> wordCount = {};

  for (String word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  return wordCount;
}

int printUniqueWords(Map<String, int> wordCount) {
  print('Words that appear only once:');

  int uniqueCount = 0;

  wordCount.forEach((word, count) {
    if (count == 1) {
      print(word);
      uniqueCount++;
    }
  });

  return uniqueCount;
}
