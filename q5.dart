/* Question 5
What is the difference between var and dynamic in Dart? Provide an example of each.
*/
void main (){
  var varOfVariable = 'var'; //var difined type of varible in cobiling time so you can't reasined to different data type
  varOfVariable = 22; // get compile-time error : can't reasgint to differnt data type

  dynamic daynamicOfVariable = 'daynamic'; //difined type of varibale in run time so allow to resined to a differnnet data type as you like
  daynamicOfVariable = 22; // allowed: dynamic can change its type at runtime
  
}