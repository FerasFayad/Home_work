/*Question 19
Write a Dart program that converts a list of names to a set of unique values.
 Create a map with counts of occurrences.
  Compare lengths and print a message if a specific name appears more than once. */
  void main() {
  List<String> names = ['feras', 'ahmed', 'khaled', 'feras', 'ahmed'];

  Set<String> unique = names.toSet();
  Map<String, int> count = {};

  for (var name in names) {
    count[name] = (count[name] ?? 0) + 1;
  }

  print(names.length > unique.length
      ? "Duplicates exist"
      : "All unique");

  print(count['feras']! > 1
      ? "feras appears more than once"
      : "feras appears once");
}
