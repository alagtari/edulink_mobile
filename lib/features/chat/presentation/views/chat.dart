import 'dart:developer';

import 'package:edulink_mobile/core/common_used/app_prefs.dart';
import 'package:edulink_mobile/core/common_used/pusher.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/core/util/utils.dart';
import 'package:edulink_mobile/features/chat/data/models/message_model.dart';
import 'package:edulink_mobile/features/chat/data/models/room_model.dart';
import 'package:edulink_mobile/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:edulink_mobile/features/chat/presentation/widgets/meesages.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Chat extends StatefulWidget implements AutoRouteWrapper {
  final RoomModel room;

  const Chat({Key? key, required this.room}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => ChatBloc()
          ..add(
            GetMessagesEvent(
              id: room.role == 'admin' ? 0 : room.id,
              isAdmin: room.role == 'admin',
            ),
          ),
        child: this,
      );
}

class _ChatState extends State<Chat> {
  late TextEditingController messageController;
  final _prefs = sl<AppPrefs>();
  late PusherService _pusherService;

  @override
  void initState() {
    messageController = TextEditingController();
    _pusherService = sl<PusherService>();
    subscribeChat();
    super.initState();
  }

  Future<void> subscribeChat() async {
    await _pusherService.initPusher();
    final organisationId = _prefs.getOrganisationId();
    final id = _prefs.getId();
    late String roomId;
    if (widget.room.role == "admin") {
      roomId = "${id}_0_$organisationId";
    } else {
      roomId = "${id}_${widget.room.id}_0";
    }
    await _pusherService.subscribePusher('chat.$roomId');
  }

  Future<void> disconnectPusher() async {
    await _pusherService.disconnect();
  }

  void _sendMessage() {
    if (messageController.text != "") {
      final organisationId = _prefs.getOrganisationId();
      final role = widget.room.role == 'admin' ? "admin" : "prof";
      final int id =
          widget.room.role == 'admin' ? organisationId! : widget.room.id;
      context.read<ChatBloc>().add(
            SendMessageEvent(
              role: role,
              message: messageController.text,
              id: id,
            ),
          );
      setState(() {
        messageController.text = "";
      });
    }
  }

  // @override
  // void dispose() {
  //   disconnectPusher();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05, vertical: 10),
      child: Column(
        children: [
          Row(
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
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 70,
                child: Image.network(
                  'https://cdn0.iconfinder.com/data/icons/user-pictures/100/matureman1-512.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.room.nom.capitalize()} ${widget.room.prenom.capitalize()}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.room.role.capitalize(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: BlocListener<ChatBloc, ChatState>(
              listener: (context, state) {
                if (state is GetMessagesSuccess) {
                  _pusherService.setInitialValue(state.messages);
                }
              },
              child: StreamBuilder<List<MessageModel>>(
                stream: _pusherService.messagesStream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const SizedBox();
                  }
                  final messages = snapshot.data ?? <MessageModel>[];
                  if (messages.isEmpty) {
                    return const SizedBox();
                  }

                  return Meesages(messages: messages);
                },
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: TextField(
                    onTap: () {},
                    controller: messageController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      hintText: 'Type a message ...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: _sendMessage,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0x43FF5652),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: const Center(
                      child: Icon(
                    Icons.send,
                    color: Color(0xFFFF5652),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
