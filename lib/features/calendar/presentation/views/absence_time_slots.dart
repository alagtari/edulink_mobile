import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/features/calendar/data/models/absence_model.dart';
import 'package:edulink_mobile/features/calendar/presentation/bloc/absence/absences_bloc.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/absence_time_slot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AbsenceTimeSlots extends StatefulWidget {
  final ValueNotifier<DateTime> date;

  const AbsenceTimeSlots({
    super.key,
    required this.date,
  });

  @override
  State<AbsenceTimeSlots> createState() => _AbsenceTimeSlotsState();
}

class _AbsenceTimeSlotsState extends State<AbsenceTimeSlots> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<AbsencesBloc, AbsencesState>(builder: (context, state) {
              if (state is GetAbsencesSuccess) {
                return state.absences.isNotEmpty
                    ? Row(
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
                            'Absences',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBCC1CD),
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    : const SizedBox();
              }
              return const SizedBox();
            }),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<AbsencesBloc, AbsencesState>(
              builder: (context, state) {
                if (state is GetAbsencesSuccess) {
                  return state.absences.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.absences.length,
                          itemBuilder: (context, index) => AbsenceTimeSlot(
                            absence: state.absences[index],
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
                              "Aucune Absence",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 75, 75, 75)),
                            )
                          ],
                        );
                }
                return SizedBox();
              },
            )
          ],
        ),
      ),
    );
  }
}
