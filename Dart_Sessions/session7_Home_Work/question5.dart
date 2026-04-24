/*Q5 Create a class Course with attributes title and duration (default = 3 months).
 Create two courses: one with custom duration and one with the default. Print both.
 */
void main() {
  Course course1 = Course('Dart');
  Course course2 = Course('Flutter', '6 months');

  print('Course ${course1.title} will take ${course1.duration}');
  print('Course ${course2.title} will take ${course2.duration}');
}

class Course {
  String title;
  String duration;

  Course(this.title, [this.duration = '3 months']);
}
