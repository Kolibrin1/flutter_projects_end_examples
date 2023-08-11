import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_with_provider/pages/new_task_page.dart';

import 'package:todo_app_with_provider/widgets/top_bar.dart';

import '../models/task.dart';
import '../widgets/task_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ListTask>(context, listen: false).init();
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Wrap(
        children: [
          TopBar(),
          TaskList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const SingleChildScrollView(
                  child: AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    backgroundColor: Colors.white,
                    insetPadding: EdgeInsets.only(top: 300, bottom: 250),
                    title: Text(
                      'Новая задача',
                    ),
                    content: NewTaskPage(),
                  ),
                );
              });
        },
        elevation: 5,
        tooltip: 'Добавить новую задачу',
        child: const Icon(Icons.add),
      ),
    );
  }
}
