/*Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double. */
void main (){
  List <Map <String , dynamic>> students = [
    {'name' : 'Feras','grade' :9.5} ,
    {'name':'Khled' ,'grade': 8.0}  ,
    ];
  print(students[1]['Khled']);

  //average = (sum of values ) / numbers of values
  double average = (students[0]['grade']! + students[1]['grade']!) / students.length; 
  print(average);

 
}