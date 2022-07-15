import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/sight_card.dart';

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
            children: <Widget>[
              SightCard(sight: mocks[0]),
              SightCard(sight: mocks[1]),
              SightCard(sight: mocks[2]),
              SightCard(sight: mocks[3]),
              SightCard(sight: mocks[4]),
              SightCard(sight: mocks[5]),
            ],
          ),
        ),
      ),
    );
  }
}



// SightDetails(sight: mocks[4]),


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
