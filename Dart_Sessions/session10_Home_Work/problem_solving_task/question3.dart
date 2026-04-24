/*
3. Unique Visitor Counter
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user may open the app multiple times).
- You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors.
 */
int countUniqueVisitors(List<int> visitorIds) {
  // Convert list to Set (removes duplicates automatically)
  final uniqueVisitors = visitorIds.toSet();

  return uniqueVisitors.length;
}

void main() {
  List<int> visitors = [1, 2, 3, 2, 4, 1, 5, 3, 6];

  int uniqueCount = countUniqueVisitors(visitors);

  print('Total unique visitors: $uniqueCount');
}

/// fix two
int countUniqueVisitors2(List<int> visitorIds) {
  Set<int> unique = {};

  for (int id in visitorIds) {
    unique.add(id);
  }

  return unique.length;
}
