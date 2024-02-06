import 'package:edulink_mobile/features/chat/data/models/message_model.dart';
import 'package:edulink_mobile/features/chat/presentation/widgets/received_message.dart';
import 'package:edulink_mobile/features/chat/presentation/widgets/sent_message.dart';
import 'package:flutter/material.dart';

class Meesages extends StatefulWidget {
  const Meesages({
    super.key,
    required this.messages,
  });

  final List<MessageModel> messages;

  @override
  State<Meesages> createState() => _MeesagesState();
}

class _MeesagesState extends State<Meesages> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    scrollBottom();
    super.initState();
  }

  void scrollBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:const EdgeInsets.only(bottom: 15),
      shrinkWrap: true,
      controller: _scrollController,
      itemCount: widget.messages.length,
      itemBuilder: (context, i) {
        final MessageModel message = widget.messages[i];
        return message.type == "Parents"
            ? SentMessage(
                message: message,
              )
            : ReceivedMessage(
                message: message,
              );
      },
    );
  }
}
