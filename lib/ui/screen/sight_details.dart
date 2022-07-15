import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/constants.dart';

// карточка с ПОДРОБНОЙ информацией о месте

class SightDetails extends StatelessWidget {
  final Sight sight;

  SightDetails({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('')),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(children: [
              Image.network(
                sight.url,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: 20,
                left: 20,
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.red,
                  ),
                ),
              ),
            ]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    sight.name,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        sight.type,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "ПОМЕНЯТЬ закрыто до 09:00",
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      sight.details,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                        // fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                elevation: 0,
                // shadowColor: Colors.amber,
              ),
              icon: Icon(
                Icons.route,
                size: 24.0,
              ),
              label: Text('ПОСТРОИТЬ МАРШРУТ'), // <-- Text
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black12,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black45,
                          elevation: 0,
                        ),
                        icon: Icon(
                          Icons.calendar_month,
                          size: 15.0,
                        ),
                        label: Text('Запланировать'), // <-- Text
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black87,
                          elevation: 0,
                          // shadowColor: Colors.amber,
                        ),

                        icon: Icon(
                          Icons.favorite,
                          size: 15.0,
                        ),
                        label: Text('В Избранное'), // <-- Text
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
