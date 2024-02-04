import 'package:edulink_mobile/core/util/date_time_formatters.dart';
import 'package:edulink_mobile/features/calendar/data/models/exercice_model.dart';
import 'package:flutter/material.dart';

class ExerciceTimeSlot extends StatelessWidget {
  final ExerciceModel exercice;
  const ExerciceTimeSlot({
    required this.exercice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 120,
            margin: const EdgeInsets.only(right: 20),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                    color: Color.fromARGB(255, 241, 241, 241), width: 2),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  formatTimeString(exercice.heur),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color.fromRGBO(32, 37, 37, 1),
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  formatTimeString(exercice.heurL),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFFBCC1CD),
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
              decoration: const BoxDecoration(
                color: Color(0xFF47BECC),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exercice.matiere,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${exercice.description.substring(0, 55)} ...',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
