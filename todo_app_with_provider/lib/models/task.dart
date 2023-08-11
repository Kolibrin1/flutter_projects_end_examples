// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todo_app_with_provider/config/task_preferences.dart';

class Task {
  late String date;
  late String time;
  late String taskDescription;
  Task({
    required this.date,
    required this.time,
    required this.taskDescription,
  });

  factory Task.fromJson(Map<String, dynamic> jsonData) {
    return Task(
      date: jsonData['date'],
      time: jsonData['time'],
      taskDescription: jsonData['taskDescription'],
    );
  }

  static Map<String, dynamic> toMap(Task task) => {
        'date': task.date,
        'time': task.time,
        'taskDescription': task.taskDescription,
      };

  static String encode(List<Task> list) => json.encode(
      list.map<Map<String, dynamic>>((elem) => Task.toMap(elem)).toList());

  static List<Task>? decode(String list) {
    if (list.isNotEmpty) {
      return (json.decode(list) as List<dynamic>)
          .map<Task>((item) => Task.fromJson(item))
          .toList();
    }
    return null;
  }

  @override
  String toString() =>
      'Task(date: $date, time: $time, taskDescription: $taskDescription)';
}

class ListTask extends ChangeNotifier {
  List<Task> _list = [];

  List<String> listDates = [];
  List<Task> get getListTask => _list;
  List<Task> get getList => _list.where((task) => task.date == date).toList();
  List<String> get dates => listDates;
  String date =
      '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}';

  String encodeList(List<Task> list) {
    return Task.encode(list);
  }

  List<Task>? decodeList(String str) {
    return Task.decode(str);
  }

  void setDate(String newDate) {
    date = newDate;
    setPrefs();
    notifyListeners();
  }

  void addTask(Task task) {
    _list.add(task);
    if (!listDates.contains(task.date)) {
      listDates.add(task.date);
    }
    setPrefs();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _list.remove(task);
    setPrefs();
    notifyListeners();
  }

  void deInitTask(Task task, String newDescription) {
    task.taskDescription = newDescription;
    setPrefs();
    notifyListeners();
  }

  void changeNewDate(Task task, String newDate, String date) {
    _list.remove(task);
    task.date = newDate;

    if (_list.where((element) => element.date == date).isEmpty) {
      listDates.remove(date);
    }
    _list.add(task);

    if (!listDates.contains(newDate)) {
      listDates.add(newDate);
    }
    setPrefs();
    notifyListeners();
  }

  void changeNewTime(Task task, String newTime) {
    task.time = newTime;
    setPrefs();
    notifyListeners();
  }

  void clearList() {
    _list.clear();
    listDates.clear();
    setPrefs();
    notifyListeners();
  }

  void init() {
    _list = decodeList(TaskPreferences.getList() ?? '') ?? [];
    date = TaskPreferences.getDate() ??
        '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}';
    listDates = TaskPreferences.getDates() ?? [];
  }

  void setPrefs() async {
    await TaskPreferences.setList(encodeList(_list));
    await TaskPreferences.setDates(dates);
    await TaskPreferences.setDate(date);
  }

  @override
  String toString() {
    String str = '';
    for (var i = 0; i < _list.length; i++) {
      str +=
          'listElement$i=${_list[i].date} - ${_list[i].taskDescription} - ${_list[i].time}, \n';
    }
    return str;
  }
}
