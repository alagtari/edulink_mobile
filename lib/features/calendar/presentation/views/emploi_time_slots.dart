import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/features/calendar/presentation/bloc/reunion/reunions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class EmploiTimeSlots extends StatelessWidget {
  final ValueNotifier<DateTime> date;
  const EmploiTimeSlots({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
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
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
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
                              color: Color.fromARGB(255, 241, 241, 241),
                              width: 2),
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '08:00',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(32, 37, 37, 1),
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '09:00',
                            textAlign: TextAlign.right,
                            style: TextStyle(
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
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 2, 100, 111),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mathematiques',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Prof : Chaima Chaari',
                                textAlign: TextAlign.left,
                                style: TextStyle(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
