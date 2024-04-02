import 'package:flutter/material.dart';

class SelectedDay extends StatelessWidget {
  final String day;
  const SelectedDay({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
        color: Color(0xFFFF5652),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          day,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
