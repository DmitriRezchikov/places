// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';
import '../../mocks.dart';

import '/ui/res/constants.dart';

// ! Это не работает

// class ListOfCardsWidget extends StatelessWidget {
//   const ListOfCardsWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
// List<Widget> cardList = [];
// for (var i = 0; i < mocks.length; i++) {
//   cardList.add(SightCard(cardNumber: i));
// }

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: const <Widget>[
//          cardList,
//       ],
//     );
//   }
// }

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
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   toolbarHeight: 150,
      //   // backgroundColor: Colors.green,
      //   elevation: 0.0,

      //   title: Text(
      //     AppStrings.appTitle,
      //     style: AppTypography.textAppTitleStyle,
      //   ),
      // ),

      // ! Без preferredSize всё нормально работало, а теперь - нет.
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.transparent,
          // toolbarHeight: 150,
          // backgroundColor: Colors.green,
          elevation: 0.0,
          title: Text(
            AppStrings.appTitle,
            style: AppTypography.textAppTitleStyle,
          ),
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              SightCard(cardNumber: 0),
              SightCard(cardNumber: 1),
              SightCard(cardNumber: 2),
              SightCard(cardNumber: 3),
              SightCard(cardNumber: 4),
              // SightCard(cardNumber: 5),
            ],
          ),
        ),
      ),
    );
  }
}



    // return Scaffold(
    //       appBar: PreferredSize( //wrap with PreferredSize
    //             preferredSize: Size.fromHeight(20), //height of appbar
    //             child: AppBar(
    //               title:Text("AppBar Height"), //appbar title
    //               backgroundColor: Colors.redAccent //appbar background color
    //             )
    //       ),
    //       body: Container(
    //         alignment:Alignment.topCenter,
    //         padding: EdgeInsets.all(35),
    //          child: Text("AppBar Height")
    //       )
    //   );
