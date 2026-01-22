/*Question 14
Write a Dart program that works with a nullable list of integers.
 If the list is null or empty, print 'No scores'.
  Otherwise, calculate and print the sum of the first and last elements 
  and check if it is greater than or equal to 40.
 */  
  void main() {
  List<int>? listOfIntegers = [25, 50, 75, 100]; // nullable list

  if (listOfIntegers == null) {
    print("No scores");
  } else if (listOfIntegers.isEmpty) {
    print("No scores");
  } else {
    int sum = listOfIntegers.first + listOfIntegers.last;

    if (sum >= 40) {
      print("The sum of first and last elements is >= 40");
    } else {
      print("The sum of first and last elements is < 40");
    }
  }
}
