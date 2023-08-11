import 'package:flutter/material.dart';

import '../models/task.dart';
import '../pages/de_init_task_page.dart';

class TaskWidget extends StatelessWidget {
  final Task task;
  const TaskWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DeInitTaskPage(
            task: task,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 20),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.orange[200],
                ),
                child: Center(child: Text(task.time)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                task.taskDescription,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
