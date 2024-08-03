import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/exercice/presentation/widgets/exercice_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ExerciceScreen extends StatefulWidget {
  const ExerciceScreen({super.key});

  @override
  State<ExerciceScreen> createState() => _ExerciceScreenState();
}

class _ExerciceScreenState extends State<ExerciceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Header(
            title: "Exercice",
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 110,
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: const Color(0x4B46DDB9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/child.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Foulen Ben Foulen",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 110,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0x4B8183FE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          "assets/svg/book.svg",
                          colorFilter: const ColorFilter.mode(
                            Color(0xFF595BDA),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const Text(
                        "Physique",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF595BDA),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 110,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0x4BFA7193),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          "assets/svg/calendar.svg",
                          colorFilter: const ColorFilter.mode(
                            Color(0xFFFA7193),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const Text(
                        "20/03/2024",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFA7193),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Description : ",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laborist. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.",
            style:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 12, height: 2),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Ressources :",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF52BBE8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Text(
                  "NomDossier.png",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                const Icon(
                  Icons.remove_red_eye,
                  size: 22,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  "assets/svg/download.svg",
                  width: 20,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
