import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:edulink_mobile/features/chat/data/models/message_model.dart';
import 'package:flutter/foundation.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:rxdart/subjects.dart';

class PusherService {
  late PusherChannelsFlutter pusher;

  final _messagesController = BehaviorSubject<List<MessageModel>>();
  Stream<List<MessageModel>> get messagesStream => _messagesController.stream;

  Future<void> initPusher() async {
    pusher = PusherChannelsFlutter.getInstance();

    try {
      await pusher.init(
        apiKey: '2b6959525e8fede60bc9',
        cluster: 'mt1',
      );
      await pusher.connect();
    } catch (e) {
      if (kDebugMode) {
        print("ERROR: $e");
      }
    }
  }

  void setInitialValue(List<MessageModel> initialValue) {
    _messagesController.add(initialValue);
  }

  Future<void> subscribePusher(String channelName) async {
    await pusher.subscribe(
      channelName: channelName,
      onEvent: (event) {
        if (event.eventName == 'message') {
          final MessageModel message =
              MessageModel.fromJson(jsonDecode(event.data));
          final List<MessageModel> currentMessages = _messagesController.value;
          _messagesController.add([...currentMessages, message]);
        }
      },
    );
  }

  Future<void> unSubscribePusher(String channelName) async {
    await pusher.unsubscribe(channelName: channelName);
  }

  Future<void> disconnect() async {
    await pusher.disconnect();
    _messagesController.close();
  }
}
