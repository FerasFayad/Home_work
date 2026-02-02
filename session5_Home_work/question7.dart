/*
Q7. Sentence Word Counter 
- Ask the user for a short sentence.

- Print how many words it contains and how many characters
 (excluding spaces). */
import 'dart:io';

void main() {
  // #region 1) Input
  String sentence = getSentence();

  // Step 2: Processing
  int wordCount = countWords(sentence);
  int charCount = countCharactersWithoutSpaces(sentence);

  // Step 3: Output
  print("\nSentence: \"$sentence\"");
  print("Word count: $wordCount");
  print("Character count (excluding spaces): $charCount");
}

//======================= Requirement One ===============================//
String getSentence() {
  stdout.write("Enter a short sentence: ");
  return stdin.readLineSync()!;
}

//======================= Requirement Two ==============================//
int countWords(String sentence) {
  return sentence
      .trim()                
      .split(RegExp(r'\s+')) 
      .where((word) => word.isNotEmpty)
      .length;
}

//======================= Requirement Three ============================//
int countCharactersWithoutSpaces(String sentence) {
  return sentence
      .replaceAll(' ', '') 
      .length;
}
