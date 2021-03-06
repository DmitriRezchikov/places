import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/res/app_strings.dart';
import 'package:places/ui/res/app_typography.dart';

class ListOfCardsWidget extends StatelessWidget {
  const ListOfCardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cardList = [];
    for (var i = 0; i < mocks.length; i++) {
      cardList.add(SightCard(sight: mocks[i]));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ...cardList,
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

      appBar: _AppBarWidget(),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ListOfCardsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        AppStrings.appTitle,
        style: AppTypography.textAppTitleStyle,
      ),
    );
  }
}
