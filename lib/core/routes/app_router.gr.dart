// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:edulink_mobile/features/auth/login/presentation/views/login.dart'
    as _i13;
import 'package:edulink_mobile/features/bulletin/presentation/views/bulletin.dart'
    as _i1;
import 'package:edulink_mobile/features/calendar/data/models/exercice_model.dart'
    as _i22;
import 'package:edulink_mobile/features/calendar/presentation/views/calendar.dart'
    as _i2;
import 'package:edulink_mobile/features/calendar/presentation/views/exercice.dart'
    as _i10;
import 'package:edulink_mobile/features/cantine/data/models/day_meals_Model.dart'
    as _i23;
import 'package:edulink_mobile/features/cantine/presentation/views/cantine.dart'
    as _i3;
import 'package:edulink_mobile/features/cantine/presentation/views/meals_day.dart'
    as _i14;
import 'package:edulink_mobile/features/chat/data/models/room_model.dart'
    as _i19;
import 'package:edulink_mobile/features/chat/presentation/views/chat.dart'
    as _i4;
import 'package:edulink_mobile/features/chat/presentation/views/rooms.dart'
    as _i16;
import 'package:edulink_mobile/features/club/data/models/club_model.dart'
    as _i20;
import 'package:edulink_mobile/features/club/presentation/views/club.dart'
    as _i5;
import 'package:edulink_mobile/features/club/presentation/views/clubs.dart'
    as _i6;
import 'package:edulink_mobile/features/emploi/presentation/views/emploi.dart'
    as _i7;
import 'package:edulink_mobile/features/events/data/models/event_model.dart'
    as _i21;
import 'package:edulink_mobile/features/events/presentation/views/event.dart'
    as _i8;
import 'package:edulink_mobile/features/events/presentation/views/events.dart'
    as _i9;
import 'package:edulink_mobile/features/payment/presentation/views/payment.dart'
    as _i15;
import 'package:edulink_mobile/forget_password.dart' as _i11;
import 'package:edulink_mobile/home.dart' as _i12;
import 'package:flutter/material.dart' as _i18;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    Bulletin.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(child: const _i1.Bulletin()),
      );
    },
    Calendar.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Calendar(),
      );
    },
    Cantine.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(child: const _i3.Cantine()),
      );
    },
    Chat.name: (routeData) {
      final args = routeData.argsAs<ChatArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(
            child: _i4.Chat(
          key: args.key,
          room: args.room,
        )),
      );
    },
    Club.name: (routeData) {
      final args = routeData.argsAs<ClubArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.Club(
          key: args.key,
          club: args.club,
        ),
      );
    },
    Clubs.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(child: const _i6.Clubs()),
      );
    },
    Emploi.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(child: const _i7.Emploi()),
      );
    },
    Event.name: (routeData) {
      final args = routeData.argsAs<EventArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.Event(
          key: args.key,
          event: args.event,
        ),
      );
    },
    Events.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(child: const _i9.Events()),
      );
    },
    Exercice.name: (routeData) {
      final args = routeData.argsAs<ExerciceArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.Exercice(
          key: args.key,
          exercice: args.exercice,
        ),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ForgetPassword(),
      );
    },
    Home.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.Home(),
      );
    },
    Login.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(child: const _i13.Login()),
      );
    },
    MealsDay.name: (routeData) {
      final args = routeData.argsAs<MealsDayArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.MealsDay(
          key: args.key,
          title: args.title,
          meals: args.meals,
        ),
      );
    },
    Payment.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(child: const _i15.Payment()),
      );
    },
    Rooms.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.WrappedRoute(child: const _i16.Rooms()),
      );
    },
  };
}

/// generated route for
/// [_i1.Bulletin]
class Bulletin extends _i17.PageRouteInfo<void> {
  const Bulletin({List<_i17.PageRouteInfo>? children})
      : super(
          Bulletin.name,
          initialChildren: children,
        );

  static const String name = 'Bulletin';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Calendar]
class Calendar extends _i17.PageRouteInfo<void> {
  const Calendar({List<_i17.PageRouteInfo>? children})
      : super(
          Calendar.name,
          initialChildren: children,
        );

  static const String name = 'Calendar';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Cantine]
class Cantine extends _i17.PageRouteInfo<void> {
  const Cantine({List<_i17.PageRouteInfo>? children})
      : super(
          Cantine.name,
          initialChildren: children,
        );

  static const String name = 'Cantine';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Chat]
class Chat extends _i17.PageRouteInfo<ChatArgs> {
  Chat({
    _i18.Key? key,
    required _i19.RoomModel room,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          Chat.name,
          args: ChatArgs(
            key: key,
            room: room,
          ),
          initialChildren: children,
        );

  static const String name = 'Chat';

  static const _i17.PageInfo<ChatArgs> page = _i17.PageInfo<ChatArgs>(name);
}

class ChatArgs {
  const ChatArgs({
    this.key,
    required this.room,
  });

  final _i18.Key? key;

  final _i19.RoomModel room;

  @override
  String toString() {
    return 'ChatArgs{key: $key, room: $room}';
  }
}

/// generated route for
/// [_i5.Club]
class Club extends _i17.PageRouteInfo<ClubArgs> {
  Club({
    _i18.Key? key,
    required _i20.ClubModel club,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          Club.name,
          args: ClubArgs(
            key: key,
            club: club,
          ),
          initialChildren: children,
        );

  static const String name = 'Club';

  static const _i17.PageInfo<ClubArgs> page = _i17.PageInfo<ClubArgs>(name);
}

class ClubArgs {
  const ClubArgs({
    this.key,
    required this.club,
  });

  final _i18.Key? key;

  final _i20.ClubModel club;

  @override
  String toString() {
    return 'ClubArgs{key: $key, club: $club}';
  }
}

/// generated route for
/// [_i6.Clubs]
class Clubs extends _i17.PageRouteInfo<void> {
  const Clubs({List<_i17.PageRouteInfo>? children})
      : super(
          Clubs.name,
          initialChildren: children,
        );

  static const String name = 'Clubs';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Emploi]
class Emploi extends _i17.PageRouteInfo<void> {
  const Emploi({List<_i17.PageRouteInfo>? children})
      : super(
          Emploi.name,
          initialChildren: children,
        );

  static const String name = 'Emploi';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i8.Event]
class Event extends _i17.PageRouteInfo<EventArgs> {
  Event({
    _i18.Key? key,
    required _i21.EventModel event,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          Event.name,
          args: EventArgs(
            key: key,
            event: event,
          ),
          initialChildren: children,
        );

  static const String name = 'Event';

  static const _i17.PageInfo<EventArgs> page = _i17.PageInfo<EventArgs>(name);
}

class EventArgs {
  const EventArgs({
    this.key,
    required this.event,
  });

  final _i18.Key? key;

  final _i21.EventModel event;

  @override
  String toString() {
    return 'EventArgs{key: $key, event: $event}';
  }
}

/// generated route for
/// [_i9.Events]
class Events extends _i17.PageRouteInfo<void> {
  const Events({List<_i17.PageRouteInfo>? children})
      : super(
          Events.name,
          initialChildren: children,
        );

  static const String name = 'Events';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Exercice]
class Exercice extends _i17.PageRouteInfo<ExerciceArgs> {
  Exercice({
    _i18.Key? key,
    required _i22.ExerciceModel exercice,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          Exercice.name,
          args: ExerciceArgs(
            key: key,
            exercice: exercice,
          ),
          initialChildren: children,
        );

  static const String name = 'Exercice';

  static const _i17.PageInfo<ExerciceArgs> page =
      _i17.PageInfo<ExerciceArgs>(name);
}

class ExerciceArgs {
  const ExerciceArgs({
    this.key,
    required this.exercice,
  });

  final _i18.Key? key;

  final _i22.ExerciceModel exercice;

  @override
  String toString() {
    return 'ExerciceArgs{key: $key, exercice: $exercice}';
  }
}

/// generated route for
/// [_i11.ForgetPassword]
class ForgetPassword extends _i17.PageRouteInfo<void> {
  const ForgetPassword({List<_i17.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.Home]
class Home extends _i17.PageRouteInfo<void> {
  const Home({List<_i17.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i13.Login]
class Login extends _i17.PageRouteInfo<void> {
  const Login({List<_i17.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MealsDay]
class MealsDay extends _i17.PageRouteInfo<MealsDayArgs> {
  MealsDay({
    _i18.Key? key,
    required String title,
    _i23.DayMealsModel? meals,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          MealsDay.name,
          args: MealsDayArgs(
            key: key,
            title: title,
            meals: meals,
          ),
          initialChildren: children,
        );

  static const String name = 'MealsDay';

  static const _i17.PageInfo<MealsDayArgs> page =
      _i17.PageInfo<MealsDayArgs>(name);
}

class MealsDayArgs {
  const MealsDayArgs({
    this.key,
    required this.title,
    this.meals,
  });

  final _i18.Key? key;

  final String title;

  final _i23.DayMealsModel? meals;

  @override
  String toString() {
    return 'MealsDayArgs{key: $key, title: $title, meals: $meals}';
  }
}

/// generated route for
/// [_i15.Payment]
class Payment extends _i17.PageRouteInfo<void> {
  const Payment({List<_i17.PageRouteInfo>? children})
      : super(
          Payment.name,
          initialChildren: children,
        );

  static const String name = 'Payment';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Rooms]
class Rooms extends _i17.PageRouteInfo<void> {
  const Rooms({List<_i17.PageRouteInfo>? children})
      : super(
          Rooms.name,
          initialChildren: children,
        );

  static const String name = 'Rooms';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}
