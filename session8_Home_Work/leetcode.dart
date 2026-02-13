/*242. Valid Anagram
Easy

Topics
premium lock icon
Companies
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 

Example 1:

Input: s = "anagram", t = "nagaram"

Output: true

Example 2:

Input: s = "rat", t = "car"

Output: false

 

Constraints:

1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
 

 */
void main() {
  Solution sol = Solution();
  print(sol.isAnagram("anagram", "nagaram"));
  print(sol.isAnagram("rat", "car"));
}

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    List<int> count = List.filled(26, 0);

    for (int i = 0; i < s.length; i++) {
      count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      count[t.codeUnitAt(i) - 'a'.codeUnitAt(0)]--;
    }

    for (int c in count) {
      if (c != 0) return false;
    }

    return true;
  }
}
