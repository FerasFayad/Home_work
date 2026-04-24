import 'package:flutter/material.dart';
import 'package:sesseion4_flutter_prloject/home/lojic/task_Managment.dart';
import 'package:sesseion4_flutter_prloject/home/views/widgets/task_card.dart';

class TasksCardsBulider extends StatefulWidget {
  final TaskManagment taskManagment;
  final void Function() updateTasks;

  const TasksCardsBulider(
      {super.key, required this.taskManagment, required this.updateTasks});

  @override
  State<TasksCardsBulider> createState() => _TasksCardsBuliderState();
}

class _TasksCardsBuliderState extends State<TasksCardsBulider> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 14, left: 8, right: 8),
      itemCount: widget.taskManagment.tasksCount,
      itemBuilder: (context, index) {
        return TaskCard(
          task: widget.taskManagment.tasks[index],
          tasks: widget.taskManagment.tasks,
          onDelete: () {
            widget.taskManagment.removeTask(widget.taskManagment.tasks[index]);
            if (widget.taskManagment.isEmpty) {
              widget.updateTasks();
            } else {
              setState(() {});
            }
          },
        );
      },
    );
  }
}
