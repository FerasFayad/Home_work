/*
Given the head of a singly linked list, reverse the list, and return the reversed list.

Example 1:
/*
  Linked List Representation:

  1  ->  2  ->  3  ->  4  ->  5
               |
               v
  5  ->  4  ->  3  ->  2  ->  1

  - First line: original order
  - Second line: reversed order
*/

Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]


Example 2:
/*
  1  ->  2
   |
   v
  2  ->  1

  Original: 1 -> 2
  Reversed: 2 -> 1
*/

Input: head = [1,2]
Output: [2,1]




Example 3:
Input: head = []
Output: []
 

Constraints:

The number of nodes in the list is the range [0, 5000].
-5000 <= Node.val <= 5000

 */

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;

    while (current != null) {
      ListNode? nextTemp = current.next;

      current.next = prev;

      prev = current;
      current = nextTemp;
    }

    return prev;
  }
}

//fix 2
ListNode? reverseList(ListNode? head) {
  if (head == null || head.next == null) {
    return head;
  }

  ListNode? newHead = reverseList(head.next);
  head.next!.next = head;
  head.next = null;

  return newHead;
}
