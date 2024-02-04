import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/features/calendar/data/models/reunion_model.dart';
import 'package:edulink_mobile/features/calendar/presentation/bloc/reunion/reunions_bloc.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/reunion_time_slot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ReunionTimeSlots extends StatefulWidget implements AutoRouteWrapper {
  final ValueNotifier<DateTime> date;

  const ReunionTimeSlots({
    super.key,
    required this.date,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => ReunionsBloc(),
        child: this,
      );
  @override
  State<ReunionTimeSlots> createState() => _ReunionTimeSlotsState();
}

class _ReunionTimeSlotsState extends State<ReunionTimeSlots> {
  late ValueNotifier<List<ReunionModel>> _reunions;
  @override
  void initState() {
    _reunions = ValueNotifier<List<ReunionModel>>([]);
    widget.date.addListener(() {
      String formattedDate = DateFormat('yyyy-MM-dd').format(widget.date.value);
      context.read<ReunionsBloc>().add(GetReunionsEvent(date: formattedDate));
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
            ValueListenableBuilder<List<ReunionModel>>(
              valueListenable: _reunions,
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
                          'Reunions',
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
            BlocListener<ReunionsBloc, ReunionsState>(
              listener: (context, state) {
                if (state is GetReunionsSuccess) {
                  print(state.reunions.length);
                  setState(() {
                    _reunions.value = state.reunions;
                  });
                }
              },
              child: const SizedBox(),
            ),
            ValueListenableBuilder<List<ReunionModel>>(
              valueListenable: _reunions,
              builder: (context, value, child) {
                return _reunions.value.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: _reunions.value.length,
                        itemBuilder: (context, index) => ReunionTimeSlot(
                          reunion: _reunions.value[index],
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
                            "Aucun Reunion",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 75, 75, 75)
                            ),
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
