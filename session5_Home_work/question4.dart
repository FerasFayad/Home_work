/*Q4. Simple List Analyzer 
- Let the user enter 5 numbers into a list.
- Print the largest and smallest numbers,
 and then calculate the difference between them.
 */
import 'dart:io';

void main(){
  // #region 1) Input Nubers
  print('Enter 5 numbers');
  List<int> numbers = inputNuber();
  // #endregion

  // #region 2) The Largest Number
  int largestNumber = getMaxNumber(numbers);
  print('The Largest Number Is: $largestNumber');
  //endredion

  // #region 3) The smallest Number
  int smallesNumber = getMinNumber(numbers);
    print('The Smallest Number Is: $smallesNumber');

  //endredion

  // #region 3) Calculate The Difference Between Them
   int differenceBetweenTowNumbers = calculateTheDifference(largestNumber, smallesNumber);
   print('The Difference Between Them: $differenceBetweenTowNumbers');
  //endredion



}
//======================= Requirement One =================================//

List<int> inputNuber(){
  return List.generate(5, (number){
    stdout.write('Enter The number ${number+1} : ');
    return int.parse(stdin.readLineSync()!);});
}
//======================= Requirement Tow =================================//


int getMaxNumber(List<int> numbers){
  return numbers.reduce((number1 , number2)=> number1 > number2 ? number1 :number2);
}
//======================= Requirement Three =================================//
int getMinNumber(List<int> numbers){
  return numbers.reduce((number1 , number2)=> number1<number2 ? number1:number2);
}
//======================= Requirement Four =================================//
int calculateTheDifference(int largestNumber , int smallesNumber){
  return largestNumber - smallesNumber;

}

