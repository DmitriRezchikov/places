// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';

import '/ui/res/constants.dart';

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

        title: Text(
          "Список\nИнтересных мест",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            SightCard(cardNumber: 0),
            SightCard(cardNumber: 1),
            SightCard(cardNumber: 2),
          ],
        ),
      ),
    );
  }
}
