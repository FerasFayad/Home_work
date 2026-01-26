/*Q13
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. 
Count how many times each name appears. Print only the names that appear more than once.
 */
void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];

  Map<String, int> freq = {};

  for (var name in names) {
    freq[name] = (freq[name] ?? 0) + 1;
  }

  freq.entries
      .where((e) => e.value > 1)
      .forEach((e) => print(e.key));
}