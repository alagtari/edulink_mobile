import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/features/profile/presentation/widgets/etablissement_section.dart';
import 'package:edulink_mobile/features/profile/presentation/widgets/settings_section.dart';
import 'package:edulink_mobile/features/profile/presentation/widgets/logout_setting_card.dart';
import 'package:edulink_mobile/features/profile/presentation/widgets/password_setting_card.dart';
import 'package:edulink_mobile/features/profile/presentation/widgets/profile_setting_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ValueNotifier<int> profile = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ValueListenableBuilder(
              valueListenable: profile,
              builder: (context, value, child) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: const EdgeInsets.all(7),
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF00AEDB),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              profile.value = 0;
                            });
                          },
                          child: Container(
                            height: 46,
                            decoration: BoxDecoration(
                              color: value == 0
                                  ? const Color(0xFFFFFFFF)
                                  : const Color(0xFF00AEDB),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: value == 0
                                      ? const Color(0xFF00AEDB)
                                      : const Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              profile.value = 1;
                            });
                          },
                          child: Container(
                            height: 46,
                            decoration: BoxDecoration(
                              color: value == 1
                                  ? const Color(0xFFFFFFFF)
                                  : const Color(0xFF00AEDB),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Etablissement',
                                style: TextStyle(
                                  color: value == 1
                                      ? const Color(0xFF00AEDB)
                                      : const Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, .02),
                  spreadRadius: 1,
                  blurRadius: 26.5,
                  offset: Offset(3, 3),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, .02),
                  spreadRadius: 1,
                  blurRadius: 26.5,
                  offset: Offset(-3, -3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/arrow_right.svg",
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/child.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Chaima Ben Farhat",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            "2 eme annee A",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/svg/arrow_left.svg",
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ValueListenableBuilder(
            valueListenable: profile,
            builder: (context, value, child) {
              if (value == 0) {
                return const SettingsSection();
              } else {
                return const EtablissementSection();
              }
            },
          )
        ],
      ),
    );
  }
}
