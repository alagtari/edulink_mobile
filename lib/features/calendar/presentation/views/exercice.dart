import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/core/util/date_time_formatters.dart';
import 'package:edulink_mobile/features/calendar/data/models/exercice_model.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Exercice extends StatelessWidget {
  final ExerciceModel exercice;
  const Exercice({Key? key, required this.exercice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Header(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      image: NetworkImage(
                        "https://edulinkbackend.edulink.tn/uploads/exercice/${exercice.image}",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        const Text(
                          'Deadline :',
                          style: TextStyle(
                              letterSpacing: 0,
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          exercice.dateL,
                          style: const TextStyle(
                              letterSpacing: 0,
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          formatTimeString(exercice.heurL),
                          style: const TextStyle(
                              letterSpacing: 0,
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontFamily: 'Raleway',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      exercice.matiere,
                      style: const TextStyle(
                          letterSpacing: 0,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontFamily: 'Raleway',
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      exercice.description,
                      style: const TextStyle(
                          letterSpacing: 0,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontFamily: 'Raleway',
                          fontSize: 15,
                          height: 1.7),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
