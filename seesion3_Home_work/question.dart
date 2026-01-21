/*Question 9
Write a Dart program that removes duplicate items from a list using a Set. 
Compare the unique count with the original list length 
and print a message if duplicates were removed.
 */
void main(){
 var listOfItems = [1,2,3,4,4,5,6];
 var setOfItems = listOfItems.toSet();//conver list to set to remove the duplicate
 print('set will automaticlly removs duplicates$setOfItems' ); 
 print(listOfItems.length); print(setOfItems.length);//Compare the unique count with the original list length 

}