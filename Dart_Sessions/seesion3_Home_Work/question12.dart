/*Question 20
Write a Dart program that checks access rules for a ticket gate.
 If the user is under 18, check if they have a parent.
  Use a switch statement on an area variable
  (general or restricted) to decide what message to print. */
  void main() {
  int age = 20;
  bool hasParent = true;
  String area = 'restricted';

  if (age < 18 && hasParent) {
    print("Parent required");
  } else {
    switch (area) {
      case 'general':
        print("General access");
        break;
      case 'restricted':
        print("Restricted access");
        break;
      default:
        print("Unknown area");
    }
  }
}
