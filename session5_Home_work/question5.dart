/*Q5. Multiplication Table with Sum - Ask the user for a number.
 - Print its multiplication table up to 10, 
 then calculate the sum of all results. */
 import 'dart:io';

void main(){
//  #region 1) Input Number
int number = getNumber();
// #endregion

// #region 2) Multiplication Table (Formatted)
  List<String> table = multiplicationTableFormatted(number);
  print("\nMultiplication Table:");
  print(table.join('\n'));
// #endregion

// #region 3) Sum
  int sum = calculateSumFromTable(number);
  print("\nThe Sum Of Results: $sum");
// #endregion

 }

 //======================= Requirement One =================================//
 int getNumber(){
  stdout.write('Enter Number ');
  int number = int.parse(stdin.readLineSync()!);
  return number;
 }
 //======================= Requirement Tow =================================//

 List<String> multiplicationTableFormatted(int number) {
  return List.generate(10, (index) {
    int multiplier = index + 1;
    int result = multiplier * number;
    return "$multiplier * $number = $result";
  });
}
//======================= Requirement Three =================================//
int calculateSumFromTable(int number) {
  return List.generate(10, (i) => (i + 1) * number)
      .fold(0, (total, current) => total + current);
}