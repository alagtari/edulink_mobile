import 'package:edulink_mobile/features/calendar/data/models/reunion_model.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/reunion_time_slot.dart';
import 'package:flutter/material.dart';

class ReunionTimeSlots extends StatelessWidget {
  const ReunionTimeSlots({
    super.key,
    required this.reunions,
  });
  final List<ReunionModel> reunions;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            reunions.isNotEmpty
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
            const SizedBox(
              height: 20,
            ),
            reunions.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: reunions.length,
                    itemBuilder: (context, index) => ReunionTimeSlot(
                      reunion: reunions[index],
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
                  )
          ],
        ),
      ),
    );
  }
}
