import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/features/calendar/data/models/exercice_model.dart';
import 'package:edulink_mobile/features/calendar/presentation/bloc/exercice/exercices_bloc.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/exercice_time_slot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ExerciceTimeSlots extends StatefulWidget {
  final DateTime date;

  const ExerciceTimeSlots({
    super.key,
    required this.date,
  });

  @override
  State<ExerciceTimeSlots> createState() => _ExerciceTimeSlotsState();
}

class _ExerciceTimeSlotsState extends State<ExerciceTimeSlots> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<ExercicesBloc, ExercicesState>(
                builder: (context, state) {
              if (state is GetExercicesSuccess && state.exercices.isNotEmpty) {
                return Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text(
                        'Heure',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFFBCC1CD),
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    const Text(
                      'Exercices',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFFBCC1CD),
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                );
              }
              return const SizedBox();
            }),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<ExercicesBloc, ExercicesState>(
                builder: (context, state) {
              if (state is GetExercicesSuccess) {
                return state.exercices.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.exercices.length,
                        itemBuilder: (context, index) => ExerciceTimeSlot(
                          exercice: state.exercices[index],
                        ),
                      )
                    : Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: const Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/empty_calendar.png',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Aucun Exercice",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 75, 75, 75)),
                          )
                        ],
                      );
              }
              return const SizedBox();
            })
          ],
        ),
      ),
    );
  }
}
