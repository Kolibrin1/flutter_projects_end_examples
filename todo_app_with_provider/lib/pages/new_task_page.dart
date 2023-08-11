import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todo_app_with_provider/models/task.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({super.key});

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  final controllerTask = TextEditingController();

  String date = '';

  String time = '';
  String text = '';

  void showDialogDate(BuildContext context, DateTime initialDate,
      DateTime firstDate, DateTime lastDate) async {
    var newDate = await showDatePicker(
      helpText: 'Выберите дату',
      cancelText: 'Отмена',
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.orange[400],
            hintColor: Colors.orange[400],
            colorScheme: const ColorScheme.light(primary: Colors.orange),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (newDate != null) {
      date = '${newDate.day}.${newDate.month}.${newDate.year}';
    } else {
      date =
          '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}';
    }

    setState(() {});
  }

  void showDialogTime(BuildContext context, TimeOfDay initialTime) async {
    final newTime = await showTimePicker(
      helpText: 'Выберите время',
      cancelText: 'Отмена',
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.orange[400],
            hintColor: Colors.orange[400],
            colorScheme: const ColorScheme.light(primary: Colors.orange),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (newTime != null) {
      time = '${newTime.hour}:${newTime.minute}';
    } else {
      time = '${TimeOfDay.now().hour}:${TimeOfDay.now().minute}';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 230,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Divider(
              height: 10,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    showDialogDate(
                      context,
                      DateTime.now(),
                      DateTime.now(),
                      DateTime(2050),
                    );
                  },
                  child: Text(
                    date == '' ? 'Выберите дату' : date,
                    style: TextStyle(color: Colors.orange[400], fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialogTime(
                      context,
                      TimeOfDay.now(),
                    );
                  },
                  child: Text(
                    time == '' ? 'Выберите время' : time,
                    style: TextStyle(color: Colors.orange[400], fontSize: 16),
                  ),
                ),
              ],
            ),
            Container(
              width: 250,
              child: TextField(
                controller: controllerTask,
                cursorColor: Colors.orange,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Описание Задачи',
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 12),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                if (time == '') {
                  time = '${TimeOfDay.now().hour}:${TimeOfDay.now().minute}';
                }
                if (date == '') {
                  date =
                      '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}';
                }
                if (controllerTask.text == '') {
                  text = 'Новая задача';
                }
                text = controllerTask.text;
                final task =
                    Task(date: date, taskDescription: text, time: time);
                final _model = Provider.of<ListTask>(context, listen: false);
                _model.addTask(task);

                Navigator.of(context).pop();
              },
              child: Text(
                'Добавить',
                style: TextStyle(color: Colors.orange[400], fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
