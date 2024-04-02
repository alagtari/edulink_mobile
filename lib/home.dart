import 'package:edulink_mobile/core/common_used/app_prefs.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/core/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 0;
  final String? name = sl<AppPrefs>().getPrenom();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) {
          switch (i) {
            case 1:
              context.router.push(
                const Bulletin(),
              );
              break;
            case 2:
              context.router.push(
                const Payment(),
              );
              break;
            case 3:
              context.router.push(
                const Emploi(),
              );
              break;

            default:
              // Handle other cases if needed
              break;
          }
          setState(() => _currentIndex = i);
        },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.pink,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.library_books),
            title: const Text("Bulletin"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.payment),
            title: const Text("Paiment"),
            selectedColor: Colors.pink,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.calendar_month),
            title: const Text("Emploi"),
            selectedColor: Colors.pink,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Bonjour, ${name?.capitalize()} 👋',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Raleway',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .2,
                      width: MediaQuery.of(context).size.width * .425,
                      decoration: const BoxDecoration(
                          color: Color(0x4A46DDBA),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            width: 75.0,
                            height: 75.0,
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/actualite.png"),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'actualité',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: () {
                        context.router.push(const Clubs());
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .425,
                        decoration: const BoxDecoration(
                            color: Color(0x4A8183FE),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              width: 75.0,
                              height: 75.0,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/club.png"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'club',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Raleway',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.router.push(const Events());
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .425,
                        decoration: const BoxDecoration(
                            color: Color(0x4AFA7193),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              width: 75.0,
                              height: 75.0,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/event.png"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'evenement',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Raleway',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: () {
                        context.router.push(const Cantine());
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .425,
                        decoration: const BoxDecoration(
                            color: Color(0x4A46DDBA),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              width: 75.0,
                              height: 75.0,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/cantine.png"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'cantine',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Raleway',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.router.push(
                          const Calendar(),
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .425,
                        decoration: const BoxDecoration(
                            color: Color(0x4A8183FE),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              width: 75.0,
                              height: 75.0,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/calendar.png"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'calendrier',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Raleway',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: () => context.router.push(const Rooms()),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .425,
                        decoration: const BoxDecoration(
                            color: Color(0x4AFA7193),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              width: 75.0,
                              height: 75.0,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/chat.png"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'chat',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Raleway',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
