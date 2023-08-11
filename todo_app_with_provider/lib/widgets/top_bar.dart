import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_with_provider/pages/full_list_tasks_page.dart';

import '../models/task.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  // String date =

  Future<String> showDialogDate(BuildContext context, DateTime initialDate,
      DateTime firstDate, DateTime lastDate) async {
    var thisDate = await showDatePicker(
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

    if (thisDate != null) {
      return '${thisDate.day}.${thisDate.month}.${thisDate.year}';
    }
    return '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}';
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ListTask>(context);
    final dates = model.dates;
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            'assets/images/bg1.png',
          ).image,
          fit: BoxFit.fitHeight,
        ),
        gradient: const LinearGradient(
          colors: [Colors.orangeAccent, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(201, 125, 0, 0.3),
                  child: IconButton(
                    icon: const Icon(Icons.dehaze),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const FullListTaskPage();
                      }));
                    },
                  ),
                ),
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(201, 125, 0, 0.3),
                  child: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    color: Colors.white,
                    onPressed: () async {
                      final _model =
                          Provider.of<ListTask>(context, listen: false);
                      _model.setDate(await showDialogDate(context,
                          DateTime.now(), DateTime(2023), DateTime(2050)));
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 140,
                      height: 40,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () => model.setDate(dates[index]),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.orange[300],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2),
                                child: Center(
                                  child: Text(
                                    dates[index],
                                    style: const TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: dates.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(102, 255, 157, 0),
                      child: IconButton(
                        icon: const Icon(Icons.delete),
                        color: Colors.white,
                        tooltip: 'Удалить все задачи',
                        onPressed: () {
                          final _model =
                              Provider.of<ListTask>(context, listen: false);

                          _model.clearList();
                        },
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Chip(
                    backgroundColor: const Color.fromARGB(102, 255, 157, 0),
                    label: Text(
                      model.date,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
