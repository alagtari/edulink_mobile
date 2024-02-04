import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/features/calendar/data/models/exercice_model.dart';
import 'package:edulink_mobile/features/calendar/presentation/bloc/exercice/exercices_bloc.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/exercice_time_slot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ExerciceTimeSlots extends StatefulWidget implements AutoRouteWrapper {
  final ValueNotifier<DateTime> date;

  const ExerciceTimeSlots({
    super.key,
    required this.date,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => ExercicesBloc()..add(GetExercicesEvent()),
        child: this,
      );
  @override
  State<ExerciceTimeSlots> createState() => _ExerciceTimeSlotsState();
}

class _ExerciceTimeSlotsState extends State<ExerciceTimeSlots> {
  late ValueNotifier<List<ExerciceModel>> _exercices;
  late List<ExerciceModel> _allExercices;
  @override
  void initState() {
    _exercices = ValueNotifier<List<ExerciceModel>>([]);
    _allExercices = [];
    widget.date.addListener(() {
      String formattedDate = DateFormat('yyyy-MM-dd').format(widget.date.value);
      List<ExerciceModel> filteredExercises = _allExercices
          .where((exercise) => exercise.dateL == formattedDate)
          .toList();
      _exercices.value = filteredExercises;
      context.read<ExercicesBloc>().add(GetExercicesEvent());
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
            ValueListenableBuilder<List<ExerciceModel>>(
              valueListenable: _exercices,
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
                    )
                  : const SizedBox(),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocListener<ExercicesBloc, ExercicesState>(
              listener: (context, state) {
                if (state is GetExercicesSuccess) {
                  setState(() {
                    _allExercices = state.exercices;
                  });
                }
              },
              child: const SizedBox(),
            ),
            ValueListenableBuilder<List<ExerciceModel>>(
              valueListenable: _exercices,
              builder: (context, value, child) {
                return _exercices.value.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: _exercices.value.length,
                        itemBuilder: (context, index) => ExerciceTimeSlot(
                          exercice: _exercices.value[index],
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
                            "Aucun Exercice",
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
