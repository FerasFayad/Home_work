/*Question 12
Create a Dart program that safely reads a phone number from a map.
 If the phone number is null, print a default message. 
 Then update the phone number and print its length. */
 void main() {
  Map<String, String?> phones = {'ahmed': null};

  String checkNumber = phones['ahmed'] ?? "No number";
  print(checkNumber);

  phones['ahmed'] = "0591234567";
  print(phones['ahmed']!.length);
}
