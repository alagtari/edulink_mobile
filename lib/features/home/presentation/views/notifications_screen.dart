import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/exercice/presentation/widgets/exercice_widget.dart';
import 'package:edulink_mobile/features/home/presentation/widgets/notification_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _ExerciceScreenState();
}

class _ExerciceScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .05,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Header(
            title: "Notifications",
            notification: false,
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .7,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const NotificationWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
