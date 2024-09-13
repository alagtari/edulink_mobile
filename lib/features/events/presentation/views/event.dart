import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/core/util/date_time_formatters.dart';
import 'package:edulink_mobile/features/events/data/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Event extends StatelessWidget {
  final EventModel event;
  const Event({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Header(),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: NetworkImage(
                      "https://edulinkbackend.edulink.tn/uploads/${event.image}",
                    ),
                    fit: BoxFit.cover),
              ),
              child: const SizedBox(),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                event.titre,
                style: const TextStyle(
                    letterSpacing: 0,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: 'Raleway',
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                event.description,
                style: const TextStyle(
                    letterSpacing: 0,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: 'Raleway',
                    fontSize: 17,
                    height: 1.7),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * .42,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                      color: Color(0x4B46DDBA),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons.calendar_month,
                            color: Color(0xFF46DDB9),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          formatDate(event.dateHeur),
                          style: const TextStyle(
                              letterSpacing: 0,
                              color: Color(0xFF46DDB9),
                              fontFamily: 'Raleway',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * .42,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                      color: Color(0x4B8183FE),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons.access_time_outlined,
                            color: Color(0xFF8183FE),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          formatTime(event.dateHeur),
                          style: const TextStyle(
                              letterSpacing: 0,
                              color: Color(0xFF8183FE),
                              fontFamily: 'Raleway',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                  color: Color(0xFFFF5652),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Row(
                  children: [
                    const Text(
                      'Prix',
                      style: TextStyle(
                          letterSpacing: 0,
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Text(
                      event.frais == 0 ? "Gratuit" : "${event.frais} TND",
                      style: const TextStyle(
                          letterSpacing: 0,
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
