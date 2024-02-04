import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
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
            const Header(
              title: 'Chat',
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                child: Column(
              children: [
                GestureDetector(
                  onTap: () => context.router.push(const Chat()),
                  child: Container(
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
                ),
                GestureDetector(
                  onTap: () => context.router.push(const Chat()),
                  child: Container(
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
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
