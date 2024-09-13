import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/features/exercice/data/models/exercice_model.dart';
import 'package:flutter/material.dart';

class ExerciceWidget extends StatelessWidget {
  const ExerciceWidget({
    super.key,
    this.termine = false,
    required this.exercice,
  });
  final bool termine;
  final ExerciceModel exercice;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 120,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 26.5,
              blurStyle: BlurStyle.normal,
              color: Color.fromRGBO(0, 0, 0, 0.02),
            ),
            BoxShadow(
              offset: Offset(-3, -3),
              blurRadius: 26.5,
              blurStyle: BlurStyle.normal,
              color: Color.fromRGBO(0, 0, 0, 0.02),
            )
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            termine ? "Terminé" : "Manquant",
            style: TextStyle(
              color:
                  termine ? const Color(0xFF27A083) : const Color(0xFFFA7193),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 2,
                color:
                    termine ? const Color(0xFF27A083) : const Color(0xFFFA7193),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercice.matiere,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(exercice.dateL),
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: () => context.router.push(
                  ExerciceRoute(exercice: exercice),
                ),
                child: Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    color: const Color(0xFF52BBE8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}
