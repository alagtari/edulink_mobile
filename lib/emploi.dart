import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/normal_day.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/selected_day.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Emploi extends StatefulWidget {
  const Emploi({Key? key}) : super(key: key);

  @override
  State<Emploi> createState() => _EmploiState();
}

class _EmploiState extends State<Emploi> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 249, 249, 249),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .05),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Header(
                      title: "Emploi",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(
                          width: .2, color: Color.fromARGB(255, 214, 214, 214)),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * .05),
                        child: const Row(
                          children: [
                            SelectedDay(
                              day: "L",
                            ),
                            Spacer(),
                            NotSelectedDay(
                              day: "M",
                            ),
                             Spacer(),
                            NotSelectedDay(
                              day: "M",
                            ),
                             Spacer(),
                            NotSelectedDay(
                              day: "J",
                            ),
                             Spacer(),
                            NotSelectedDay(
                              day: "V",
                            ),
                             Spacer(),
                            NotSelectedDay(
                              day: "S",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFFAF9F9),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox())
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotSelectedDay extends StatelessWidget {
  final String day;
  const NotSelectedDay({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 40,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          day,
          style: const TextStyle(
            color: Color.fromARGB(255, 55, 61, 61),
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class SelectedDay extends StatelessWidget {
  final String day;
  const SelectedDay({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 40,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Color(0xFFFF5652),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          day,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
    );
  }
}
