import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/features/calendar/data/models/reunion_model.dart';
import 'package:edulink_mobile/features/calendar/presentation/bloc/reunion/reunions_bloc.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/reunion_time_slot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ReunionTimeSlots extends StatefulWidget {
  final ValueNotifier<DateTime> date;

  const ReunionTimeSlots({
    super.key,
    required this.date,
  });

  @override
  State<ReunionTimeSlots> createState() => _ReunionTimeSlotsState();
}

class _ReunionTimeSlotsState extends State<ReunionTimeSlots> {
  late ValueNotifier<List<ReunionModel>> _reunions;
  @override
  void initState() {
    _reunions = ValueNotifier<List<ReunionModel>>([]);
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
                            "Aucun Reunion",
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
