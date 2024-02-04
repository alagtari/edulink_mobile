import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NormalDay extends StatelessWidget {
  const NormalDay({
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dayName[0].toUpperCase(),
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFFBCC1CD)),
          ),
          Text(
            day.day.toString(),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212525)),
          ),
        ],
      ),
    );
  }
}
