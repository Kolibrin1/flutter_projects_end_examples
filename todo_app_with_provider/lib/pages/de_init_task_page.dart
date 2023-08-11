// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';

class DeInitTaskPage extends StatefulWidget {
  final Task task;
  const DeInitTaskPage({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  State<DeInitTaskPage> createState() => _DeInitTaskPageState();
}

class _DeInitTaskPageState extends State<DeInitTaskPage> {
  Future<String> showDialogDate(BuildContext context, DateTime initialDate,
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
      return '${newDate.day}.${newDate.month}.${newDate.year}';
    } else {
      return '';
    }
  }

  Future<TimeOfDay?> showDialogTime(
      BuildContext context, TimeOfDay initialTime) async {
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
    return newTime;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Изменить Задачу'),
          backgroundColor: Colors.orange[400],
        ),
        body: Center(
          child: Container(
            color: Colors.orange[50],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final newDate = await showDialogDate(context,
                              DateTime.now(), DateTime(2023), DateTime(2050));
                          final _model =
                              Provider.of<ListTask>(context, listen: false);
                          _model.changeNewDate(
                              widget.task, newDate, widget.task.date);
                          widget.task.date = newDate;
                          setState(() {});
                        },
                        child: Text(
                          widget.task.date,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.orange),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final newTime =
                              await showDialogTime(context, TimeOfDay.now());
                          if (newTime != null) {
                            final _model =
                                Provider.of<ListTask>(context, listen: false);
                            _model.changeNewTime(widget.task,
                                "${newTime.hour}:${newTime.minute}");
                            widget.task.time =
                                "${newTime.hour}:${newTime.minute}";
                            setState(() {});
                          }
                        },
                        child: Text(
                          widget.task.time,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      // Provider.of<ListTask>(context, listen: false)
                      //     .deInitTask(widget.task, value),
                      final _model =
                          Provider.of<ListTask>(context, listen: false);
                      _model.deInitTask(widget.task, value);
                    },
                    initialValue: widget.task.taskDescription,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Новая задача',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.orange),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.orange),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      'assets/images/bg1.png',
                      opacity: const AlwaysStoppedAnimation(.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
