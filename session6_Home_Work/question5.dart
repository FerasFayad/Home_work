/*Q5. Find Second Largest Number
- Ask the user to enter 6 numbers in a list.
- Print the largest number and the second largest number (without sorting the list).
 */
import 'dart:io';

void main(){

}
List<int> getNumbers(){
  return List.generate(6, (index){
    stdout.write('Enter number ${index +1} :');
    return int.parse(stdin.readLineSync()!);
  });
}

// List<int> getLargestSecoundNumber (List<int> numbers){
//   return  numbers.reduce((a ,b)
//   {
//     if (a >= b) {
//       return a;
//     } else {
//       return b;
//     }
//   });
// }
