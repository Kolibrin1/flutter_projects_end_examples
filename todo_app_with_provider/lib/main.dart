import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_with_provider/config/task_preferences.dart';
import 'package:todo_app_with_provider/models/task.dart';

import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TaskPreferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListTask>(
      create: (context) => ListTask(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.orange,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.orange[400]),
        ),
        title: 'Список задач',
        home: const HomePage(),
      ),
    );
  }
}
