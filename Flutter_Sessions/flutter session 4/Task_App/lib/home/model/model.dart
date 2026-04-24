class TaskModel {
  final String title;
  final DateTime date;
  bool isDone;

  TaskModel({
    required this.title,
    required this.date,
    this.isDone = false,
  });
  void toggleCompletion() {
    isDone = !isDone;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaskModel && other.title == title && other.date == date;
  }

  @override
  int get hashCode => title.hashCode ^ date.hashCode;
}
