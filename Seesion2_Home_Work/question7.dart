/*xercise 7:
7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result.
 */
void main(){
  List numbers = [4, 4, 5, 6, 6, 7];
  Set uniqueNumbers = numbers.toSet(); // once you've converted the list to set will automatically remove duplicates
  print(uniqueNumbers);
  print(uniqueNumbers.add(7));
  print(uniqueNumbers.remove(4));
  print(uniqueNumbers.contains(5));
  


}