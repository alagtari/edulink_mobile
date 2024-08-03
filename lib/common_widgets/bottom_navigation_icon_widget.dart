import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationIconWidget extends StatelessWidget {
  const BottomNavigationIconWidget({
    super.key,
    required int selectedIndex,
    required this.icon,
    required this.index,
  }) : _selectedIndex = selectedIndex;

  final int _selectedIndex;
  final int index;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: const EdgeInsets.only(bottom: 1),
      child: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          _selectedIndex == index ? const Color(0xFFFF5652) : Colors.grey,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
