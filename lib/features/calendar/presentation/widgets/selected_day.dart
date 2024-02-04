import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectedDay extends StatelessWidget {
  const SelectedDay({
    super.key,
    required this.day,
  });

  final DateTime day;

  @override
  Widget build(BuildContext context) {
    final dayName = DateFormat.EEEE('fr_FR').format(day);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      width: 40,
      decoration: const BoxDecoration(
        color: Color(0xFFFF5652),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dayName[0].toUpperCase(),
            style: const TextStyle(
                fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            day.day.toString(),
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
