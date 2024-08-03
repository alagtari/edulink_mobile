import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/core/util/utils.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String? title;
  const Header({
    Key? key,
    this.title = "",
    this.arrowBack = true,
    this.notification = true,
  }) : super(key: key);
  final bool arrowBack;
  final bool notification;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        arrowBack
            ? GestureDetector(
                onTap: () => context.router.back(),
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
              )
            : const SizedBox(
                height: 40,
                width: 40,
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
        notification
            ? GestureDetector(
                onTap: () => context.router.push(const NotificationsRoute()),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Color(0x43FF5652),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 25,
                      color: Color(0xFFFF5652),
                    ),
                  ),
                ),
              )
            : const SizedBox(
                height: 40,
                width: 40,
              ),
      ],
    );
  }
}
