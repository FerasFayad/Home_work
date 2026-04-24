/*Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
 */

void main() {
  Grade grade = Grade();

  grade.score = 69;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');

  grade.score = 45;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');

  grade.score = 120; // invalid
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
}

class Grade {
  double _score = 0;

  set score(double score) => (score >= 0.0 && score <= 100.0)
      ? _score = score
      : print('Invalid score');

  double get score => _score;
  bool get isPass => score >= 50;
}
