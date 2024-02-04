import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/normal_day.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/selected_day.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late ValueNotifier<DateTime> _focusedDay;
  late DateTime? _selectedDay;

  @override
  void initState() {
    _focusedDay = ValueNotifier(DateTime.now());
    _selectedDay = DateTime.now();

    super.initState();
  }

  String _value = '1';
  final _items = [
    const DropdownMenuItem(
      value: '1',
      child: Text(
        'Reunion',
        style: TextStyle(color: Color(0xFF4DC591)),
      ),
    ),
    const DropdownMenuItem(
      value: '2',
      child: Text(
        'Reunion',
        style: TextStyle(color: Color(0xFF4DC591)),
      ),
    )
  ];
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
                      title: "calendar",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ValueListenableBuilder<DateTime>(
                      valueListenable: _focusedDay,
                      builder: (_, value, __) {
                        final dayName = DateFormat.EEEE('fr_FR').format(value);
                        final dayNumber = value.day;
                        final monthName =
                            DateFormat.MMMM('fr_FR').format(value);
                        final year = value.year.toString();
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,
                              child: Text(
                                "${dayNumber < 10 ? "0" : ""}$dayNumber",
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    color: Color.fromRGBO(32, 37, 37, 1),
                                    fontFamily: 'Quicksand',
                                    fontSize: 44,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w600,
                                    height: 1),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dayName,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      color: Color.fromRGBO(188, 193, 205, 1),
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      height: 1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "$monthName $year",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      color: Color.fromRGBO(188, 193, 205, 1),
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      height: 1),
                                )
                              ],
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Container(
                              width: 120,
                              height: 50,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: const BoxDecoration(
                                color: Color(0x2A4DC591),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: DropdownButton(
                                  value: _value,
                                  items: _items,
                                  onChanged: (String? newItem) {
                                    switch (newItem) {
                                      case "1":
                                        context.router.push(
                                          ReunionTimeSlots(date: _focusedDay),
                                        );
                                        break;
                                      case "2":
                                        context.router.push(
                                          ReunionTimeSlots(date: _focusedDay),
                                        );
                                        break;
                                      // case "3":
                                      //     context.router.push(EmploiTimeSlots());
                                      //   break;
                                      // case "4":
                                      //     context.router.push(EmploiTimeSlots());
                                      //   break;
                                      // case "5":
                                      //     context.router.push(EmploiTimeSlots());
                                      //   break;
                                      default:
                                        // Handle other cases if needed
                                        break;
                                    }

                                    setState(() {
                                      _value = newItem!;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFF4DC591),
                                  ),
                                  underline: Container(),
                                ),
                              ),
                            )
                          ],
                        );
                      },
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
                      TableCalendar(
                        focusedDay: _focusedDay.value,
                        headerVisible: false,
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          if (!isSameDay(_selectedDay, selectedDay)) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay.value = focusedDay;
                            });
                            // widget.onDateSelected.call(_selectedDay!);
                          }
                        },
                        locale: 'fr_FR',
                        calendarFormat: CalendarFormat.week,
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        calendarBuilders: CalendarBuilders(
                          selectedBuilder: (context, day, focusedDay) {
                            return SelectedDay(
                              day: day,
                            );
                          },
                          todayBuilder: (context, day, focusedDay) {
                            return NormalDay(
                              day: day,
                            );
                          },
                          defaultBuilder: (context, day, focusedDay) {
                            return NormalDay(
                              day: day,
                            );
                          },
                          outsideBuilder: (context, day, focusedDay) {
                            return NormalDay(
                              day: day,
                            );
                          },
                          dowBuilder: (context, day) {
                            return const SizedBox();
                          },
                        ),
                        onPageChanged: (focusedDay) {
                          _focusedDay.value = focusedDay;
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
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
                      const Expanded(
                        child: AutoRouter(),
                      )
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
