import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_with_provider/config/scroll_cfg.dart';
import 'package:todo_app_with_provider/models/task.dart';

import 'task_widget.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ListTask>(context);
    final list = model.getList;

    return list.isEmpty
        ? const Center(
            child: Text('Список пуст'),
          )
        : ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                Provider.of<ListTask>(context, listen: false).setPrefs();
                final task = list[index];
                return TaskWidget(task: task);
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
              itemCount: list.length,
            ),
          );
  }
}
