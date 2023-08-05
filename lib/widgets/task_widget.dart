import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  final String taskName;
  final String details;
  final DateTime datetime;

  const TaskWidget({super.key, required this.taskName, required this.details, required this.datetime});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    String text = DateTime.now().toString();
    List<String> parts = text.split('.');
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
        left: 10,
        top: 10,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(40, 133, 196, 248),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Task 1',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5),
              child: Text(
                'Hello world',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  parts[0],
                  style: TextStyle(
                      color: const Color.fromARGB(255, 3, 3, 3).withAlpha(128)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
