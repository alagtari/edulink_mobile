import 'package:edulink_mobile/core/routes/app_router.gr.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.teal,
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
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 40,
                    width: 40,
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
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Bonjour, Chaima 👋',
                    textAlign: TextAlign.left,
                    style: TextStyle(
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
                      onTap: () => context.router.push(const Calendar()),
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
                    Container(
                      height: MediaQuery.of(context).size.height * .2,
                      width: MediaQuery.of(context).size.width * .425,
                      decoration: const BoxDecoration(
                          color: Color(0x4AFA7193),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
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
