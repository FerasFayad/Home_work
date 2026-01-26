/*
Q7
Create a program with the scores [10, 0, 20, 30]. 
Ignore the zeros, add the other numbers together, 
and print the total. */
void main(){
  List scores = [10,0,20,30];
  int sumOfScores = 0;
  for( int socre in scores){
    if (socre!=0){
    sumOfScores = sumOfScores + socre;
    } 
  }
      print(sumOfScores);


  }