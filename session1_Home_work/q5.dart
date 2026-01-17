/* Question 5
What is the difference between var and dynamic in Dart? Provide an example of each.
*/
void main (){
  var varOfVariable = 'var'; //var is inferred as String at compile-time , so you cannot be reassigned to a different data type.
  varOfVariable = 22; // get compile-time error : A value of type 'int' can't be assigned to a variable of type 'String'.

  dynamic daynamicOfVariable = 'daynamic'; //dynamic allows changing the variable's type at runtime. so allow to reassigned to a differnnet data type as you like.
  daynamicOfVariable = 22; // Allowed: dynamic can change its type at runtime
  
}
/*
*var uses type inference at compile-time, and once the type is set, it cannot be changed.
*dynamic disables static type checking and allows the variable’s type to change at runtime. */