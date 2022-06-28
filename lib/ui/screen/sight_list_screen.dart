// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Sight List Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text("Hello!"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Если кликнуть, появится клавиатура',
            ),
          ),
        ],
      ),
    );
  }
}
