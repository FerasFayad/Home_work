/* 
Q6. Sentence Analyzer
- Ask the user to input a sentence. 
- Print how many words it contains. 
- Then print the shortest word and the longest word from the sentence.
*/
import 'dart:io';

void main() {
  String sentence = getSentence();
  List<String> word = splitSectence(sentence);
  print(countOfWords(word));
  print(longestWord(word));
  print(shortestword(word));
}

String getSentence() {
  stdout.write('Enter sentence ');
  return stdin.readLineSync()!;
}

List<String> splitSectence(String sentence) {
  return sentence.trim().split(RegExp(r'\s+'));
}

int countOfWords(List<String> sentence) {
  return sentence.length;
}

String longestWord(List<String> sentence) {
  return sentence.reduce((word1, word2) {
    return word1.length >= word2.length ? word1 : word2;
  });
}

String shortestword(List<String> sentence) {
  return sentence.reduce((word1, word2) {
    return word1.length <= word2.length ? word1 : word2;
  });
}
