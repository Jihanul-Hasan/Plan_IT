import 'package:flutter/material.dart';
import 'package:plan_it/widgets/task_widget.dart';

// ignore: camel_case_types
class All_Tasks extends StatefulWidget {
  const All_Tasks({super.key});

  @override
  State<All_Tasks> createState() => _All_TasksState();
}

// ignore: camel_case_types
class _All_TasksState extends State<All_Tasks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task Board',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(246, 255, 255, 255),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TaskWidget().,
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black87,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    ));
  }
}
