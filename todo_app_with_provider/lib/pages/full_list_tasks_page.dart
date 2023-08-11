import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_with_provider/config/scroll_cfg.dart';
import 'package:todo_app_with_provider/models/task.dart';
import 'package:todo_app_with_provider/widgets/task_widget.dart';

class FullListTaskPage extends StatelessWidget {
  const FullListTaskPage({super.key});

  List<Widget> createList(context, date, model) {
    final list =
        model.getListTask.where((element) => element.date == date).toList();
    List<Widget> newList = [];
    for (var i = 0; i < list.length; i++) {
      newList.add(
        const SizedBox(
          height: 6,
        ),
      );
      newList.add(
        TaskWidget(
          task: list[i],
        ),
      );
      newList.add(
        const SizedBox(
          height: 3,
        ),
      );
    }

    return newList;
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ListTask>(context);

    final dates = model.dates;
    late String date;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Список задач'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: dates.isEmpty
            ? const Center(child: Text('Список пуст'))
            : Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Stack(children: [
                  Center(
                    child: Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        'assets/images/bg1.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                  ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        date = dates[index];
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange[100],
                                ),
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    date,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: createList(context, date, model).length *
                                  16.5,
                              child: Column(
                                children: createList(context, date, model),
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: dates.length,
                    ),
                  ),
                ]),
              ),
      ),
    );
  }
}
