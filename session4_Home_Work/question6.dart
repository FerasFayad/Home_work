/*
Q6
Create a program that calculates the factorial of 6 and prints the result. */
void main() {
  int num = 6, factorial = 1;
  for (var i = 1; i <= num; i++) factorial *= i;
  print(factorial);
}
