/*Q5. Find Second Largest Number
- Ask the user to enter 6 numbers in a list.
- Print the largest number and the second largest number (without sorting the list).
 */
import 'dart:io';

void main(){
List<int> numbers = getNumbers();
print(numbers);
int largestNumber = getLargestSecoundNumber(numbers);
print(largestNumber);
}
List<int> getNumbers(){
  return List.generate(6, (index){
    stdout.write('Enter number ${index +1} :');
    return int.parse(stdin.readLineSync()!);
  });
}

int getLargestSecoundNumber (List<int> numbers){
  return  numbers.reduce((number1 ,number2){
    return number1 >=number2 ? number1:number2;
    });
}
