/*Question 16
Write a Dart program that evaluates three integer variables with different logical 
and comparison expressions. 
Print the results, then decide whether 
to print 'Rule passed' or 'Rule failed' based on one of the expressions.
 */
void main(){
 
  int a = 5, b = 10, c = 15;

  bool r1 = a < b && b < c;
  bool r2 = a + b >= c;
  bool r3 = c > a || b == 0;

  print("r1: $r1");
  print("r2: $r2");
  print("r3: $r3");

  print(r1 ? "Rule passed" : "Rule failed");
}


