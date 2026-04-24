/*
Q3. Modify Attributes
- Create a class Person with attributes name and age.
- Create an object and set its initial values using a constructor.
- Then change the age of the object and print the updated details. 
*/
void main() {
  Person student = Person('Ahmed', 12);

  print('Before update:');
  student.printDetails();

  student.age = 13;

  print('After update:');
  student.printDetails();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printDetails() {
    print('Name: $name, Age: $age');
  }
}
