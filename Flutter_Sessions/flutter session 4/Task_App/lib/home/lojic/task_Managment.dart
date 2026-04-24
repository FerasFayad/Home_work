import 'package:sesseion4_flutter_prloject/home/model/model.dart';

class TaskManagment {
  final List<TaskModel> tasks = [];

  void addTask(TaskModel task) {
    tasks.add(task);
  }

  void removeTask(TaskModel task) {
    tasks.remove(task);
  }

  bool get isEmpty => tasks.isEmpty;

  int get tasksCount => tasks.length;
}
