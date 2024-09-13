import 'package:edulink_mobile/features/calendar/data/models/absence_model.dart';
import 'package:edulink_mobile/features/calendar/presentation/widgets/absence_time_slot.dart';
import 'package:flutter/material.dart';

class AbsenceTimeSlots extends StatelessWidget {
  const AbsenceTimeSlots({
    super.key,
    required this.absences,
  });
  final List<AbsenceModel> absences;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            absences.isNotEmpty
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
                        'Absences',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFFBCC1CD),
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                : const SizedBox(),
            const SizedBox(
              height: 20,
            ),
            absences.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: absences.length,
                    itemBuilder: (context, index) => AbsenceTimeSlot(
                      absence: absences[index],
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
                        "Aucune Absence",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 75, 75, 75),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
