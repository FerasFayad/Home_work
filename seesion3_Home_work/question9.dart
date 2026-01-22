/*uestion 17
Write a Dart program that formats a price tag string with a currency. 
Apply string methods such as toString, padLeft, and length to format and compare the results.
 */
void main() {
  double price = 9.99;
  String tag = "\$" + price.toString().padLeft(8, ' ');

  print(tag);
  print(tag.length > price.toString().length
      ? "Formatted is longer"
      : "Formatted is not longer");
}
