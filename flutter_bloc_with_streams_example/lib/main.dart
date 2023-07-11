import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ColorBloc _bloc = ColorBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc with stream'),
        centerTitle: true,
      ),
      body: Center(
          child: StreamBuilder(
        stream: _bloc.outputStateStream,
        initialData: Colors.red,
        builder: ((context, snapshot) {
          return AnimatedContainer(
            height: 100,
            width: 100,
            color: snapshot.data,
            duration: Duration(milliseconds: 500),
          );
        }),
      )),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            _bloc.inputEventSink.add(ColorEvent.event_red);
          },
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            _bloc.inputEventSink.add(ColorEvent.event_green);
          },
        ),
      ]),
    );
  }
}
