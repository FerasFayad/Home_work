import 'package:flutter/material.dart';
import '../../model/model.dart';

class TaskCard extends StatefulWidget {
  final TaskModel task;
  final List<TaskModel> tasks;
  final VoidCallback onDelete;

  const TaskCard({
    super.key,
    required this.task,
    required this.tasks,
    required this.onDelete,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F3F2),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              widget.task.isDone = !widget.task.isDone;
              setState(() {});
            },
            icon: Icon(
              widget.task.isDone
                  ? Icons.check_box
                  : Icons.check_box_outline_blank,
              color: const Color(0xff016c61),
            ),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.task.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    color: widget.task.isDone
                        ? const Color(0xff6f7573)
                        : const Color(0xff1b1e1e),
                    decoration: widget.task.isDone
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    decorationThickness: 2,
                    fontWeight: widget.task.isDone
                        ? FontWeight.normal
                        : FontWeight.bold,
                    decorationColor: const Color(0xFF6E6E6E),
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Created:${widget.task.date.day}/${widget.task.date.month}/${widget.task.date.year}',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6E7475),
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: widget.onDelete,
            splashRadius: 22,
            icon: const Icon(
              Icons.delete_outline,
              color: Color(0xFFE3A19A),
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
