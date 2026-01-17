/* Question 7
Given this code, identify any errors and explain why they occur:
 ```dart void main() { String name = "Alice"; name = 123; print(name); } ```

 Solution 
This code produces a compile-time error because the variable `name` is declared as a `String`.
Dart is a statically typed language, so a variable cannot be reassigned a value of a different type.
Assigning an `int` value (123) to a `String` variable is not allowed.
*/
void main() {
   String name = "Alice";
    name = 123; 
    print(name);
   }