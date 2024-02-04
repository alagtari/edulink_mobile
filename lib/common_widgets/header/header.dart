import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/core/util/utils.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String? title;
  const Header({Key? key, this.title = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.router.pop(),
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.only(left: 7),
            decoration: const BoxDecoration(
                color: Color(0x43FF5652),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const Center(
              child: Icon(Icons.arrow_back_ios,
                  size: 23, color: Color(0xFFFF5652)),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              title!.capitalize(),
              style: const TextStyle(
                  letterSpacing: 0,
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontFamily: 'Raleway',
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          // padding: EdgeInsets.only(left: 8),
          decoration: const BoxDecoration(
              color: Color(0x43FF5652),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Center(
            child: Icon(Icons.notifications_outlined,
                size: 25, color: Color(0xFFFF5652)),
          ),
        )
      ],
    );
  }
}
