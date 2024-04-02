import 'package:flutter/material.dart';

class NotSelectedDay extends StatelessWidget {
  final String day;
  final void Function(String) selectDay;

  const NotSelectedDay({super.key, required this.day, required this.selectDay});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectDay(day);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: const EdgeInsets.only(right: 10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            day,
            style: const TextStyle(
              color: Color.fromARGB(255, 55, 61, 61),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
