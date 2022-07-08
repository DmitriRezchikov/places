// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';
import '../../mocks.dart';

import '/ui/res/constants.dart';

class ListOfCardsWidget extends StatelessWidget {
  const ListOfCardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// ! Кино посмотрел.  У меня не получается.
// ! Вот это не работает когда я пытаюсь cardList показать внутри Column
    // List<Widget> cardList = [];
    // for (var i = 0; i < mocks.length; i++) {
    //   cardList.add(SightCard(cardNumber: i));
    // }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const <Widget>[
        SightCard(cardNumber: 0),
        SightCard(cardNumber: 1),
        SightCard(cardNumber: 2),
        SightCard(cardNumber: 3),
        SightCard(cardNumber: 4),
        SightCard(cardNumber: 5),
      ],
    );
  }
}

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    // listOfCardWidgets

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 150,
        // backgroundColor: Colors.green,
        elevation: 0.0,

        title: Text(
          AppStrings.appTitle,
          style: AppTypography.textAppTitleStyle,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ListOfCardsWidget(),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: const <Widget>[
          //     // SightCard(cardNumber: 0),
          //     // SightCard(cardNumber: 1),
          //     // SightCard(cardNumber: 2),
          //     // SightCard(cardNumber: 3),
          //     // SightCard(cardNumber: 4),
          //     // SightCard(cardNumber: 5),

          //   ],
          // ),
        ),
      ),
    );
  }
}
