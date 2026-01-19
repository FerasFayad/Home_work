/*Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double. */
void main (){
  List <Map <String? , double?>> students = [{'Feras':9.5} ,{'Khled' : 8.0}];
  print(students[1]['Khled']);

  //average = sum of values / numbers of values
  double average = students[0]['Feras']! + students[1]['Khled']! / 2; 
  print(average);

 
}