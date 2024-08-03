import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 70,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 26.5,
              blurStyle: BlurStyle.normal,
              color: Color.fromRGBO(0, 0, 0, 0.02),
            ),
            BoxShadow(
              offset: Offset(-3, -3),
              blurRadius: 26.5,
              blurStyle: BlurStyle.normal,
              color: Color.fromRGBO(0, 0, 0, 0.02),
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 2,
              color: const Color(0xFF00AEDB),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Color(0x4300AEDB),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.notifications_outlined,
                  size: 25,
                  color: Color(0xFF00AEDB),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Titre de la notification",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00AEDB),
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Il y'a 1 heure",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00AEDB),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
