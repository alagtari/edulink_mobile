import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/features/chat/data/models/room_model.dart';
import 'package:edulink_mobile/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:edulink_mobile/features/chat/presentation/widgets/room_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Rooms extends StatelessWidget implements AutoRouteWrapper {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => ChatBloc()..add(GetRoomsEvent()),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Header(
              title: 'Chat',
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                if (state is GetRoomsSuccess) {
                  final List<RoomModel> rooms = [
                    const RoomModel(
                      id: 0,
                      nom: "administrateur",
                      prenom: "",
                      role: 'admin',
                    ),
                    ...state.rooms
                  ];
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: rooms.length,
                    itemBuilder: (context, index) => RoomCard(
                      room: rooms[index],
                    ),
                  );
                }
                return const SizedBox();
              },
            ))
          ]),
        ),
      ),
    );
  }
}
