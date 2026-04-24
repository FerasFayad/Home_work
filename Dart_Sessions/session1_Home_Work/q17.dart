/*Question 17
If you need a variable that can hold any type of value and may change during execution,
 which data type would you use? Write a code example to show this */
 
/*Solution 
You should use a dynamic variable,it allows you to change both its value and its data type during Run-Time.
*/

//Example
void main(){
dynamic generalVariable = "Feras Fayad"; //can be name as a String variable
generalVariable = 27; //can be an age as Int variable
generalVariable = 70.5; //can be an tall of human as a double variable
generalVariable = true ; //can be a boolean variable as question
//that happens because the dynamic variable typed at run-time
}