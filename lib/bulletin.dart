import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Bulletin extends StatelessWidget {
  const Bulletin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .05),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.only(left: 7),
                  decoration: const BoxDecoration(
                      color: Color(0x43FF5652),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Icon(Icons.arrow_back_ios,
                        size: 23, color: Color(0xFFFF5652)),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Bulletin",
                      style: TextStyle(
                          letterSpacing: 0,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontFamily: 'Raleway',
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  // padding: EdgeInsets.only(left: 8),
                  decoration: const BoxDecoration(
                      color: Color(0x43FF5652),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Icon(Icons.notifications_outlined,
                        size: 25, color: Color(0xFFFF5652)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(80, 71, 190, 204),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: const Row(children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    'Matière',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'control',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'examen',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'moyenne',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 220, 220, 220)))),
                    child: const Row(children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Mathematiques',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '10.00',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '20.00',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '15.00',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 220, 220, 220)))),
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text(
                            'Sport',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            '10.00',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            '20.00',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            '15.00',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 220, 220, 220)))),
                    child: const Row(children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Physique',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '10.00',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '20.00',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '15.00',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              alignment: Alignment.centerLeft,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Nombre total d'absence : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '3 fois',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Moyenne : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '17.00',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      )),
    );
  }
}
