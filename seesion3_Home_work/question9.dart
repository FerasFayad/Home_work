/*uestion 17
Write a Dart program that formats a price tag string with a currency. 
Apply string methods such as toString, padLeft, and length to format and compare the results.
 */
void main() {
  double price = 9.99;
  double price1 = 1.9922;
  double price2 = 1.9922;
  double price3 = 1234;
  double price4 = 1.24553;





  String tag = "\$" + price.toString().padLeft(8, ' ');
  String tag1 = "\$" + price1.toString().padLeft(8, ' ');
  String tag2 = "\$" + price2.toString().padLeft(8, ' ');
  String tag3 = "\$" + price3.toString().padLeft(8, ' ');
  String tag4 = "\$" + price4.toString().padLeft(8, ' ');





  print('$tag\n');
  print('$tag1\n');
  print('$tag2\n');
  print('$tag3\n');
  print('$tag4\n');





 print(tag.length > price.toString().length
      ? "Formatted is longer"
      : "Formatted is not longer");
}
