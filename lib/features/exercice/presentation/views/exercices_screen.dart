import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/exercice/presentation/widgets/exercice_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExercicesScreen extends StatefulWidget {
  const ExercicesScreen({super.key});

  @override
  State<ExercicesScreen> createState() => _ExerciceScreenState();
}

class _ExerciceScreenState extends State<ExercicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .05,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Header(
            title: "Exercices",
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: const Color(0x4B8183FE),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xFF8183FE),
                        width: 4.0,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: const Color(0xFF8183FE),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Tout",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0x4B46DDB9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: const Color(0xFF46DDB9),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Terminé",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0x4BFA7193),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFA7193),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Manquant",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .825 - 190,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ExerciceWidget(
                  termine: index % 2 == 0 ? false : true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
