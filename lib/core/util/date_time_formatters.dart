import 'package:edulink_mobile/core/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatDate(DateTime dateTime) {
  String formattedDate = DateFormat("d MMM y", "fr_FR").format(dateTime);
  return formattedDate;
}

String formatTime(DateTime dateTime) {
  String formattedTime = DateFormat.Hm().format(dateTime);
  return formattedTime;
}

String formatTimeString(String time) {
  List<String> parts = time.split(':');
  if (parts.length == 3) {
    return '${parts[0]}:${parts[1]}';
  } else {
    return time;
  }
}
