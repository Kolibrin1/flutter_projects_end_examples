import 'package:flutter/material.dart';

import 'calculator.dart';
import 'operation.dart';
import 'operation_widget.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Calculator"),
    //     ),
    //     body: const Column(
    //       children: [
    //         ListTile(
    //           title: Text("Addition"),
    //           leading: Icon(Icons.add),
    //         ),
    //         ListTile(
    //           title: Text("Substraction"),
    //           leading: Icon(Icons.minimize),
    //         ),
    //         ListTile(
    //           title: Text("Multiplication"),
    //           leading: Icon(Icons.cancel_outlined),
    //         ),
    //         ListTile(
    //           title: Text("Division"),
    //           leading: Icon(Icons.architecture),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    final calculator = Calculator();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                OperationWidget(
                  calculator: calculator,
                  operation: Operation.add,
                ),
                const Divider(),
                OperationWidget(
                  calculator: calculator,
                  operation: Operation.substract,
                ),
                const Divider(),
                OperationWidget(
                  calculator: calculator,
                  operation: Operation.multiply,
                ),
                const Divider(),
                OperationWidget(
                  calculator: calculator,
                  operation: Operation.divide,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
