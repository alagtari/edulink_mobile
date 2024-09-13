import 'dart:developer';

import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/emploi/data/models/seance_model.dart';
import 'package:edulink_mobile/features/emploi/presentation/bloc/emploi_bloc.dart';
import 'package:edulink_mobile/features/emploi/presentation/widgets/exercice_time_slot.dart';
import 'package:edulink_mobile/features/emploi/presentation/widgets/not_selected_day.dart';
import 'package:edulink_mobile/features/emploi/presentation/widgets/selected_day.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Emploi extends StatefulWidget implements AutoRouteWrapper {
  const Emploi({Key? key}) : super(key: key);

  @override
  State<Emploi> createState() => _EmploiState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => EmploiBloc()..add(GetEmploiEvent()),
        child: this,
      );
}

class _EmploiState extends State<Emploi> {
  final List<String> days = [
    'lundi',
    'mardi',
    'mercredi',
    'jeudi',
    'vendredi',
    'samedi'
  ];
  late ValueNotifier<String> _selectedDay;
  late ValueNotifier<List<SeanceModel>> _seances;
  late ValueNotifier<List<SeanceModel>> _seanceDay;
  @override
  void initState() {
    _selectedDay = ValueNotifier<String>('lundi');
    _seances = ValueNotifier<List<SeanceModel>>([]);
    _seanceDay = ValueNotifier<List<SeanceModel>>([]);
    _selectedDay.addListener(() {});
    super.initState();
  }

  void changeDay(String day) {
    setState(() {
      _selectedDay.value = day;
      _seanceDay.value =
          _seances.value.where((item) => item.jour == day).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5FDFF),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05),
            child: const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Header(
                  title: "Emploi",
                  arrowBack: false,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .95,
            height: 40,
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .05),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: days.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return days[index] == _selectedDay.value
                    ? SelectedDay(day: days[index])
                    : NotSelectedDay(
                        day: days[index],
                        selectDay: changeDay,
                      );
              },
            ),
          ),
          ValueListenableBuilder<List<SeanceModel>>(
              valueListenable: _seanceDay,
              builder: (context, value, child) {
                return value.isNotEmpty
                    ? Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Text(
                                'Heure',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 168, 172, 180),
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
                              'Seances',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 168, 172, 180),
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      )
                    : const SizedBox();
              }),
          BlocListener<EmploiBloc, EmploiState>(
            listener: (context, state) {
              if (state is GetEmploiSuccess) {
                setState(() {
                  _seances.value = state.seances;
                  // Set _seanceDay to the seances for the initial day
                  _seanceDay.value = _seances.value
                      .where((item) => item.jour == _selectedDay.value)
                      .toList();
                });
              }
            },
            child: Expanded(
              child: ValueListenableBuilder<List<SeanceModel>>(
                valueListenable: _seanceDay,
                builder: (context, value, child) {
                  return value.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount: value.length,
                          itemBuilder: (context, index) {
                            return EmploiTimeSlot(
                              seance: value[index],
                            );
                          },
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              "Aucune Seance",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 75, 75, 75)),
                            )
                          ],
                        );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
