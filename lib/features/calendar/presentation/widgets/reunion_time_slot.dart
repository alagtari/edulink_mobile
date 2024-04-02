import 'package:edulink_mobile/core/util/date_time_formatters.dart';
import 'package:edulink_mobile/features/calendar/data/models/reunion_model.dart';
import 'package:flutter/material.dart';

class ReunionTimeSlot extends StatelessWidget {
  final ReunionModel reunion;
  const ReunionTimeSlot({
    required this.reunion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    color: Color.fromARGB(255, 241, 241, 241), width: 2),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  formatTimeString(reunion.heurD),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color.fromRGBO(32, 37, 37, 1),
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  formatTimeString(reunion.heurF),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
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
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 500,
                      padding: const EdgeInsets.all(20),
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                           topRight: Radius.circular(25),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: [
                               
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  reunion.date,
                                  style: const TextStyle(
                                      letterSpacing: 0,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontFamily: 'Raleway',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  formatTimeString(reunion.heurD),
                                  style: const TextStyle(
                                      letterSpacing: 0,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontFamily: 'Raleway',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              reunion.titre,
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
                              reunion.description,
                              style: const TextStyle(
                                  letterSpacing: 0,
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontFamily: 'Raleway',
                                  fontSize: 15,
                                  height: 1.7),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 100,
                padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                decoration: const BoxDecoration(
                  color: Color(0xFF47BECC),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reunion.titre,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '${reunion.description.length > 50 ? reunion.description.substring(0, 50) : reunion.description} ...',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
