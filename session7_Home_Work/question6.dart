/*
Q6 Create a class NumberCheck with an attribute value.
 Add a method isEven() that returns true if the number is even, false otherwise.
  In main(), test the method with one number.
 */
void main() {
  NumberCheck numberCheck = NumberCheck(3);
  print(numberCheck.isEven());
}

class NumberCheck {
  int number;

  NumberCheck(this.number);

  bool isEven() {
    return this.number.isEven;
  }
}
