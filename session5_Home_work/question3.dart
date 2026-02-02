/*Q3. Word Reversal & Vowel Count - Take a word from the user.
 - Print the word reversed, and also count how many vowels it has. */
 import 'dart:io';

void main(){
  // #region 1) Input Word
  String word = inputWord();
  // #endregion

  // #region 2) Rversing Word
  String reversed = reversedWord(word);
  print('Rversed Word: $reversed');
  //#endregion
  // #region 3) How Many Vowels It Has
  int count = countVowels(word);
  print('Vowels Count Of Enterd Word Is: $count');
  // #endregion

 }
 //============================= requirement 1 =============================// 

 String  inputWord(){
  print("Enter Word");
  String input = stdin.readLineSync()!;
  return input;
 }
  //============================= requirement 2 =============================// 

  String  reversedWord(String word ){
  String reversing =  word.split('').reversed.join();
    return reversing ;
  }

   //============================= requirement 3 =============================// 
int countVowels(String word){
  return  word.split('').where((char) => "aeiouAEIOU".contains(char)).length;
}