/*
Q2. Odd Numbers in a Range 
- Ask the user to input a number n.
- Print all odd numbers between 1 and n,
 and also print how many odd numbers were found. */
 import 'dart:io';

void main(){
//# region 1) Input Number
int number = getNumber();
//#endregion

//# region 2) Odd Number
List<int> numbers=countOddNumbers(number);
printOddNumbers(numbers);
//#endregion

//# region 3) Odd Numbers Were Found
print("The Count Of Odd Numbers : ${numbers.length}");
//# endregion
 }

 //============================= requirement 1 =============================// 
 int getNumber(){
  print('Enter Number');
  int number = int.parse(stdin.readLineSync()!);
  return number;
 }
  //============================= requirement 2 =============================// 

void printOddNumbers(List<int> numbers){
  }
  //============================= requirement 3 =============================// 

List<int> countOddNumbers(int number){
  if (number < 1) return [];
  return List.generate(number+1,
   (index) {
    return index;
    }).where((index) => index%2 == 1).toList();
}