import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/domain/sight.dart';
import '../../mocks.dart';

import '/ui/res/constants.dart';
// карточка с ПОДРОБНОЙ информацией о месте

class SightDetails extends StatelessWidget {
// Sight sight;

  SightDetails({Key? key, required Sight sight}) : super(key: key);

// TODO: потом поменять на переменную
  // int sightID = 1;

  @override
  Widget build(BuildContext context) {
    // return

    return Scaffold(
      // appBar: AppBar(title: const Text('')),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(children: [
              Image.network(
                'https://guruturizma.ru/wp-content/uploads/2017/10/GUM.jpg',
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
                  // child: SvgPicture.asset(favorite),
                ),
              ),
            ]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Пряности и радости",
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      // ! откуда берётся подчеркивание (если убрать эту строку)
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
                        "Ресторан",
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
                        "закрыто до 09:00",
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
                      "ГУМ (аббревиатура от «Государственный универсальный магазин», до 1921 года — Верхние торговые ряды) — крупный торговый комплекс (универсальный магазин) в центре Москвы, который занимает местность Китай-города и выходит главным фасадом на Красную площадь. Позиционирует себя как главный универсальный магазин страны и целый торговый квартал.",
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
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
