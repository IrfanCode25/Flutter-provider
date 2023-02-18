import 'package:flutter/material.dart';
import 'package:flutter_provider/first_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => Person(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Provider'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (builder) {
                  return const FirstPage();
                }));
              }),
              icon: const Icon(Icons.chevron_right))
        ],
      ),
      body: const Center(),
    );
  }
}

class Person {
  String? name;
  int? age;

  Person({
    this.name,
    this.age,
  });
}
