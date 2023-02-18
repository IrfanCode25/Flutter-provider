import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_provider/main.dart';
import 'package:flutter_provider/second_page.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First page'),
        actions: [
          IconButton(
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (builder) {
                  return const SecondPage();
                }));
              }),
              icon: const Icon(Icons.chevron_right))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.read<Person>().name ?? ''),
            Text('Umur : ${context.read<Person>().age.toString()}'),
            ElevatedButton(
              onPressed: () {
                context.read<Person>().name =
                    'Hello, my ID: ${Random().nextInt(20).toString()}';
                context.read<Person>().age = Random().nextInt(100);
                setState(() {});
              },
              child: const Text('refresh'),
            ),
          ],
        ),
      ),
    );
  }
}
