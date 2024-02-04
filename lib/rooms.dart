import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Rooms extends StatelessWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          child: Column(children: [
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
                      "Chat",
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
              height: 40,
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: .5,
                        color: Color.fromARGB(255, 222, 222, 222),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: Image.network(
                          'https://cdn0.iconfinder.com/data/icons/user-pictures/100/matureman1-512.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ala Gtari',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Professeur',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: .5,
                        color: Color.fromARGB(255, 222, 222, 222),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        child: Image.network(
                          'https://cdn0.iconfinder.com/data/icons/user-pictures/100/matureman1-512.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ala Gtari',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Professeur',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
