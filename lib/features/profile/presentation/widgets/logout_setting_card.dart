import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoutSettingCard extends StatelessWidget {
  const LogoutSettingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x05000000),
            spreadRadius: 1,
            blurRadius: 26.5,
            offset: Offset(3, 3),
          ),
          BoxShadow(
            color: Color(0x05000000),
            spreadRadius: 1,
            blurRadius: 26.5,
            offset: Offset(-3, -3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0x20FF5652),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              "assets/svg/logout.svg",
              colorFilter: const ColorFilter.mode(
                Color(0xFFFF5652),
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "Se déconnecter",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Expanded(child: SizedBox()),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFFFF5652),
          ),
        ],
      ),
    );
  }
}
