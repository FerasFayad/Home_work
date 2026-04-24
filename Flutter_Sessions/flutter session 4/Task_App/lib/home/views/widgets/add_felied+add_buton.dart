import 'package:flutter/material.dart';

import '../../lojic/task_Managment.dart';
import '../../model/model.dart';

class AddFeliedAddButton extends StatefulWidget {
  final TaskManagment taskManagment;
  final void Function() updateTasks;

  const AddFeliedAddButton(
      {super.key, required this.taskManagment, required this.updateTasks});

  @override
  State<AddFeliedAddButton> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddFeliedAddButton> {
  late String title;
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 54,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFE9EEEC),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Center(
              child: TextField(
                controller: controller,
                onChanged: (value) {
                  title = value;
                },
                // onSubmitted: (_) => title,
                cursorColor: const Color(0xFF1E8F82),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3F4547),
                ),
                decoration: const InputDecoration(
                  isCollapsed: true,
                  hintText: 'Add a new task...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5F6668),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          width: 54,
          height: 54,
          decoration: const BoxDecoration(
            color: Color(0xFFE4E9E7),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              final task = TaskModel(title: title, date: DateTime.now());
              widget.taskManagment.addTask(task);
              widget.updateTasks();
              controller.clear();
            },
            splashRadius: 24,
            icon: const Icon(
              Icons.add,
              size: 28,
              color: Color(0xFFA4A9A8),
            ),
          ),
        ),
      ],
    );
  }
}
