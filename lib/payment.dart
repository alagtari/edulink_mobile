import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

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
                        "Paiment",
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
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 25,
                        color: Color(0xFFFF5652),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Positioned(
                    top: 30,
                    right: 30,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(200, 0, 174, 219),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.print,
                          color: Colors.white,
                          size: 19,
                        ),
                      ),
                    ), //CircularAvatar
                  ), //
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(20, 0, 174, 219),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(200, 0, 174, 219),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: const Text(
                            'tranche',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            Text(
                              '100 TND',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -1.5),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' / par tranche',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    top: 30,
                    right: 30,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(200, 255, 85, 82),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ), //CircularAvatar
                  ), //
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(20, 255, 85, 82),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(200, 255, 85, 82),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: const Text(
                            'tranche',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            Text(
                              '100 TND',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -1.5),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' / par tranche',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
