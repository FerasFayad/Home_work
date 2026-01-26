/*Q13
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. 
Count how many times each name appears. Print only the names that appear more than once.
 */
void main(){
  List names  = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
    var repeatedNames = names.where((name) => names.where((n) => n == name).length > 1)
      .toSet(); 
      print(repeatedNames);}

    