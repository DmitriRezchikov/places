import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import '../../mocks.dart';

// карточка с КРАТКОЙ информацией о месте

class SightCard extends StatelessWidget {
  const SightCard({Key? key, required this.cardNumber}) : super(key: key);

  final int cardNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 350,
            height: 160,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 500,
                        height: 70,
                        child: Image.network(
                          mocks[cardNumber].url,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 20,
                        child: Text(
                          mocks[cardNumber].type,
                          style: const TextStyle(
                            fontSize: 13.0,
                            // fontFamily: 'Roboto',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Container(
                            width: 20,
                            height: 20,
                            child: SvgPicture.asset(
                              'res/icons/heart_icon.svg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 30, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mocks[cardNumber].name,
                          style: const TextStyle(
                            fontSize: 15.0,
                            // fontFamily: 'Roboto',
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          mocks[cardNumber].details,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12.0,
                            // fontFamily: 'Roboto',
                            color: Colors.black54,
                            // fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 1,
            ),
          ),
        ),
      ],
    );
  }
}
