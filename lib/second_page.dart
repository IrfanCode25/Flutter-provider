import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.read<Person>().name ?? ''),
            Text('Umur : ${context.read<Person>().age.toString()}'),
          ],
        ),
      ),
    );
  }
}
