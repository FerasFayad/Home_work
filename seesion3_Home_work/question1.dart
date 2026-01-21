/*Question 9
Write a Dart program that removes duplicate items from a list using a Set. 
Compare the unique count with the original list length 
and print a message if duplicates were removed.
 */
void main() {
  var listOfItems = [1, 2, 3, 4, 4, 5, 6];
  var setOfItems = listOfItems.toSet(); // Convert list to set to remove duplicates

  print("Unique items: $setOfItems");
  print("Original length: ${listOfItems.length}");
  print("Unique count: ${setOfItems.length}");

  if (listOfItems.length > setOfItems.length) {
    print("Duplicates have been removed.");
  } else {
    print("No duplicates found.");
  }
}
