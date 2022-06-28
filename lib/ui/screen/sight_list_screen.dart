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
        backgroundColor: Colors.transparent,
        toolbarHeight: 150,
        // backgroundColor: Colors.green,
        elevation: 0.0,

        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            children: const [
              TextSpan(
                text: 'С',
                style: TextStyle(color: Colors.green),
                children: <TextSpan>[
                  TextSpan(
                      text: 'писок \n',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ],
              ),
              TextSpan(
                text: 'и',
                style: TextStyle(color: Colors.yellow),
                children: <TextSpan>[
                  TextSpan(
                      text: 'нтересных мест',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ],
              ),
            ],
          ),
          // maxLines: 1,
        ),
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
