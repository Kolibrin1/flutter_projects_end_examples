import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:lesson_n1/offices.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter & HTTP',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<OfficesList> officesList;
  @override
  void initState() {
    super.initState();
    officesList = getOfficesList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter & HTTP'),
        centerTitle: true,
      ),
      body: FutureBuilder<OfficesList>(
        future: officesList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.offices.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('${snapshot.data!.offices[index].name}'),
                    subtitle: Text('${snapshot.data!.offices[index].address}'),
                    leading:
                        Image.network('${snapshot.data!.offices[index].image}'),
                    isThreeLine: true,
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('Error');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

// Future<http.Response> getData() async {
//   const url = 'https://about.google/static/data/locations.json';
//   return await http.get(Uri.parse(url));
// }

// void loadData() {
//   getData().then((response) {
//     if (response.statusCode == 200) {
//       print(response.body);
//     } else {
//       print(response.statusCode);
//     }
//   }).catchError((error) {
//     debugPrint(error.toString());
//   });
// }
