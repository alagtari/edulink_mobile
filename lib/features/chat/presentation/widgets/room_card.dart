import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/core/util/utils.dart';
import 'package:edulink_mobile/features/chat/data/models/room_model.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final RoomModel room;
  const RoomCard({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(Chat(room: room)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: .5,
              color: Color.fromARGB(255, 222, 222, 222),
            ),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 70,
              child: Image.network(
                'https://cdn0.iconfinder.com/data/icons/user-pictures/100/matureman1-512.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${room.nom.capitalize()} ${room.prenom.capitalize()}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  room.role.capitalize(),
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
