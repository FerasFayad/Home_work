/*Q1. Sum, Average & Compare 
- Ask the user for three numbers.
- Print their sum and average.
 Then, check if the average is greater than 50 or not. */

import 'dart:io';

void main (){
  // #region 1) Input  
    List<int> numbers =  getNumbers();
    print("Numbers That you've Entered: ${numbers.join(' ')}");
  // #endregion

  // #region 2) sum 
    int sum = calculateSum(numbers);
    print("The Sum Of Numbers: $sum");
  // #endregion

  // #region 3) average
  double ave = calculateAverage(sum, numbers.length);
  print("The Average Of Numbers: $ave");
  // #endregion

  // # region 4) check average is greater than 50 or not
  bool check = checkAverage(ave);
  print("is an average greater than 50: $check");
  // # endregion

}

//======================= Requirement One =================================//
List<int> getNumbers(){
  return List.generate(3, (index){
    print('Enter number${index+1}:');
    return int.parse(stdin.readLineSync()!);
    
    });
}
//======================= Requirement Tow =================================//
int calculateSum(List<int> numbers){
  return numbers.fold(0, (sum , index)=>sum+index);
}
//======================= Requirment Three =================================//
double calculateAverage (int sum , int count) { 
  return sum/count;
}
//======================== Requirment Four ================================//
bool checkAverage(double ave){
  return ave>= 50;
}


