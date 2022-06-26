import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sight List Screen')),
      // body: const Center(
      //   child: Text(
      //     "Sight List Screen",
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 40.0,
      //     ),
      //   ),
      // ),

      body: Center(
        child: Text("Hello!"),
      ),
    );
  }
}
