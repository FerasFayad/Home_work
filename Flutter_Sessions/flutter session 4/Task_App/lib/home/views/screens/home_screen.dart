import 'package:flutter/material.dart';
import 'package:sesseion4_flutter_prloject/home/views/widgets/add_felied+add_buton.dart';
import 'package:sesseion4_flutter_prloject/home/views/widgets/empty_widget.dart';
import 'package:sesseion4_flutter_prloject/home/views/widgets/tasks_cards_bulider.dart';

import '../../lojic/task_Managment.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TaskManagment taskManagment = TaskManagment();

  void updateTasks() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F4),
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xff9ef2e3),
        titleSpacing: 24,
        title: const Text(
          'My Tasks',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.black,
            height: 1,
          ),
        ),
      ),
      body: taskManagment.tasks.isEmpty
          ? const Center(child: EmptyWidget())
          : TasksCardsBulider(
              taskManagment: taskManagment,
              updateTasks: updateTasks,
            ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          color: const Color(0xFFF1F5F4),
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 12),
          child: AddFeliedAddButton(
              taskManagment: taskManagment, updateTasks: updateTasks),
        ),
      ),
    );
  }
}
