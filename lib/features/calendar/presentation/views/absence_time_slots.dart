import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/features/calendar/data/models/absence_model.dart';
import 'package:edulink_mobile/features/calendar/presentation/bloc/absence/absences_bloc.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/absence_time_slot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class AbsenceTimeSlots extends StatefulWidget implements AutoRouteWrapper {
  final ValueNotifier<DateTime> date;

  const AbsenceTimeSlots({
    super.key,
    required this.date,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => AbsencesBloc()..add(GetAbsencesEvent()),
        child: this,
      );
  @override
  State<AbsenceTimeSlots> createState() => _AbsenceTimeSlotsState();
}

class _AbsenceTimeSlotsState extends State<AbsenceTimeSlots> {
  late ValueNotifier<List<AbsenceModel>> _absences;
  late List<AbsenceModel> _allAbsences;
  @override
  void initState() {
    _absences = ValueNotifier<List<AbsenceModel>>([]);
    _allAbsences = [];
    widget.date.addListener(() {
      String formattedDate = DateFormat('yyyy-MM-dd').format(widget.date.value);
      List<AbsenceModel> filteredAbsences = _allAbsences
          .where((absence) => absence.date == formattedDate)
          .toList();
      _absences.value = filteredAbsences;
      context.read<AbsencesBloc>().add(GetAbsencesEvent());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ValueListenableBuilder<List<AbsenceModel>>(
              valueListenable: _absences,
              builder: (context, value, child) => value.isNotEmpty
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
                  : const SizedBox(),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocListener<AbsencesBloc, AbsencesState>(
              listener: (context, state) {
                if (state is GetAbsencesSuccess) {
                  setState(() {
                    _allAbsences = state.absences;
                  });
                }
              },
              child: const SizedBox(),
            ),
            ValueListenableBuilder<List<AbsenceModel>>(
              valueListenable: _absences,
              builder: (context, value, child) {
                return _absences.value.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: _absences.value.length,
                        itemBuilder: (context, index) => AbsenceTimeSlot(
                          absence: _absences.value[index],
                        ),
                      )
                    : Column(
                        children: [
                          Container(
                            height: 280,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/empty_calendar.png',
                                ),
                              ),
                            ),
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
              },
            )
          ],
        ),
      ),
    );
  }
}
