import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/core/util/date_time_formatters.dart';
import 'package:edulink_mobile/core/util/utils.dart';
import 'package:edulink_mobile/features/club/data/models/club_model.dart';
import 'package:flutter/material.dart';

class CubCard extends StatelessWidget {
  final ClubModel club;
  const CubCard({
    super.key,
    required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          Club(club: club),
        );
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://edulinkbackend.edulink.tn/uploads/club/${club.image}",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: const SizedBox(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                club.titre,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * .38,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        color: Color(0x4B46DDBA),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
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
                            width: 10,
                          ),
                          Text(
                            club.jour.capitalize(),
                            style: const TextStyle(
                                letterSpacing: 0,
                                color: Color(0xFF46DDB9),
                                fontFamily: 'Raleway',
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * .38,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        color: Color(0x4B8183FE),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
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
                            width: 10,
                          ),
                          Text(
                            formatTimeString(club.heur),
                            style: const TextStyle(
                              letterSpacing: 0,
                              color: Color(0xFF8183FE),
                              fontFamily: 'Raleway',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
