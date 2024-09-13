// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i23;
import 'package:edulink_mobile/features/auth/login/presentation/views/choose_children_screen.dart'
    as _i6;
import 'package:edulink_mobile/features/auth/login/presentation/views/login.dart'
    as _i16;
import 'package:edulink_mobile/features/bulletin/presentation/views/bulletin.dart'
    as _i2;
import 'package:edulink_mobile/features/calendar/presentation/views/calendar.dart'
    as _i3;
import 'package:edulink_mobile/features/cantine/data/models/day_meals_Model.dart'
    as _i30;
import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart'
    as _i29;
import 'package:edulink_mobile/features/cantine/presentation/views/cantine.dart'
    as _i4;
import 'package:edulink_mobile/features/cantine/presentation/views/meals.dart'
    as _i18;
import 'package:edulink_mobile/features/cantine/presentation/views/meals_day.dart'
    as _i17;
import 'package:edulink_mobile/features/chat/data/models/room_model.dart'
    as _i25;
import 'package:edulink_mobile/features/chat/presentation/views/chat.dart'
    as _i5;
import 'package:edulink_mobile/features/chat/presentation/views/rooms.dart'
    as _i22;
import 'package:edulink_mobile/features/club/data/models/club_model.dart'
    as _i26;
import 'package:edulink_mobile/features/club/presentation/views/club.dart'
    as _i7;
import 'package:edulink_mobile/features/club/presentation/views/clubs.dart'
    as _i8;
import 'package:edulink_mobile/features/emploi/presentation/views/emploi.dart'
    as _i9;
import 'package:edulink_mobile/features/events/data/models/event_model.dart'
    as _i27;
import 'package:edulink_mobile/features/events/presentation/views/event.dart'
    as _i10;
import 'package:edulink_mobile/features/events/presentation/views/events.dart'
    as _i11;
import 'package:edulink_mobile/features/exercice/data/models/exercice_model.dart'
    as _i28;
import 'package:edulink_mobile/features/exercice/presentation/views/exercice_screen.dart'
    as _i12;
import 'package:edulink_mobile/features/exercice/presentation/views/exercices_screen.dart'
    as _i13;
import 'package:edulink_mobile/features/home/presentation/views/app_frame.dart'
    as _i1;
import 'package:edulink_mobile/features/home/presentation/views/home.dart'
    as _i15;
import 'package:edulink_mobile/features/home/presentation/views/notifications_screen.dart'
    as _i19;
import 'package:edulink_mobile/features/payment/presentation/views/payment.dart'
    as _i20;
import 'package:edulink_mobile/features/profile/presentation/views/profile_screen.dart'
    as _i21;
import 'package:edulink_mobile/forget_password.dart' as _i14;
import 'package:flutter/material.dart' as _i24;

abstract class $AppRouter extends _i23.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    AppFrame.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppFrame(),
      );
    },
    Bulletin.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i2.Bulletin()),
      );
    },
    Calendar.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i3.Calendar()),
      );
    },
    Cantine.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i4.Cantine()),
      );
    },
    Chat.name: (routeData) {
      final args = routeData.argsAs<ChatArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(
            child: _i5.Chat(
          key: args.key,
          room: args.room,
        )),
      );
    },
    ChooseChildRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ChooseChildScreen(),
      );
    },
    Club.name: (routeData) {
      final args = routeData.argsAs<ClubArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.Club(
          key: args.key,
          club: args.club,
        ),
      );
    },
    Clubs.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i8.Clubs()),
      );
    },
    Emploi.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i9.Emploi()),
      );
    },
    Event.name: (routeData) {
      final args = routeData.argsAs<EventArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.Event(
          key: args.key,
          event: args.event,
        ),
      );
    },
    Events.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i11.Events()),
      );
    },
    ExerciceRoute.name: (routeData) {
      final args = routeData.argsAs<ExerciceRouteArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ExerciceScreen(
          key: args.key,
          exercice: args.exercice,
        ),
      );
    },
    ExercicesRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i13.ExercicesScreen()),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ForgetPassword(),
      );
    },
    Home.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.Home(),
      );
    },
    Login.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i16.Login()),
      );
    },
    MealsDay.name: (routeData) {
      final args = routeData.argsAs<MealsDayArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.MealsDay(
          key: args.key,
          title: args.title,
          meals: args.meals,
        ),
      );
    },
    MealsRoute.name: (routeData) {
      final args = routeData.argsAs<MealsRouteArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.MealsPage(
          key: args.key,
          title: args.title,
          meals: args.meals,
        ),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.NotificationsScreen(),
      );
    },
    Payment.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i20.Payment()),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.ProfileScreen(),
      );
    },
    Rooms.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.WrappedRoute(child: const _i22.Rooms()),
      );
    },
  };
}

/// generated route for
/// [_i1.AppFrame]
class AppFrame extends _i23.PageRouteInfo<void> {
  const AppFrame({List<_i23.PageRouteInfo>? children})
      : super(
          AppFrame.name,
          initialChildren: children,
        );

  static const String name = 'AppFrame';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Bulletin]
class Bulletin extends _i23.PageRouteInfo<void> {
  const Bulletin({List<_i23.PageRouteInfo>? children})
      : super(
          Bulletin.name,
          initialChildren: children,
        );

  static const String name = 'Bulletin';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Calendar]
class Calendar extends _i23.PageRouteInfo<void> {
  const Calendar({List<_i23.PageRouteInfo>? children})
      : super(
          Calendar.name,
          initialChildren: children,
        );

  static const String name = 'Calendar';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Cantine]
class Cantine extends _i23.PageRouteInfo<void> {
  const Cantine({List<_i23.PageRouteInfo>? children})
      : super(
          Cantine.name,
          initialChildren: children,
        );

  static const String name = 'Cantine';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Chat]
class Chat extends _i23.PageRouteInfo<ChatArgs> {
  Chat({
    _i24.Key? key,
    required _i25.RoomModel room,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          Chat.name,
          args: ChatArgs(
            key: key,
            room: room,
          ),
          initialChildren: children,
        );

  static const String name = 'Chat';

  static const _i23.PageInfo<ChatArgs> page = _i23.PageInfo<ChatArgs>(name);
}

class ChatArgs {
  const ChatArgs({
    this.key,
    required this.room,
  });

  final _i24.Key? key;

  final _i25.RoomModel room;

  @override
  String toString() {
    return 'ChatArgs{key: $key, room: $room}';
  }
}

/// generated route for
/// [_i6.ChooseChildScreen]
class ChooseChildRoute extends _i23.PageRouteInfo<void> {
  const ChooseChildRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ChooseChildRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChooseChildRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Club]
class Club extends _i23.PageRouteInfo<ClubArgs> {
  Club({
    _i24.Key? key,
    required _i26.ClubModel club,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          Club.name,
          args: ClubArgs(
            key: key,
            club: club,
          ),
          initialChildren: children,
        );

  static const String name = 'Club';

  static const _i23.PageInfo<ClubArgs> page = _i23.PageInfo<ClubArgs>(name);
}

class ClubArgs {
  const ClubArgs({
    this.key,
    required this.club,
  });

  final _i24.Key? key;

  final _i26.ClubModel club;

  @override
  String toString() {
    return 'ClubArgs{key: $key, club: $club}';
  }
}

/// generated route for
/// [_i8.Clubs]
class Clubs extends _i23.PageRouteInfo<void> {
  const Clubs({List<_i23.PageRouteInfo>? children})
      : super(
          Clubs.name,
          initialChildren: children,
        );

  static const String name = 'Clubs';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Emploi]
class Emploi extends _i23.PageRouteInfo<void> {
  const Emploi({List<_i23.PageRouteInfo>? children})
      : super(
          Emploi.name,
          initialChildren: children,
        );

  static const String name = 'Emploi';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Event]
class Event extends _i23.PageRouteInfo<EventArgs> {
  Event({
    _i24.Key? key,
    required _i27.EventModel event,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          Event.name,
          args: EventArgs(
            key: key,
            event: event,
          ),
          initialChildren: children,
        );

  static const String name = 'Event';

  static const _i23.PageInfo<EventArgs> page = _i23.PageInfo<EventArgs>(name);
}

class EventArgs {
  const EventArgs({
    this.key,
    required this.event,
  });

  final _i24.Key? key;

  final _i27.EventModel event;

  @override
  String toString() {
    return 'EventArgs{key: $key, event: $event}';
  }
}

/// generated route for
/// [_i11.Events]
class Events extends _i23.PageRouteInfo<void> {
  const Events({List<_i23.PageRouteInfo>? children})
      : super(
          Events.name,
          initialChildren: children,
        );

  static const String name = 'Events';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ExerciceScreen]
class ExerciceRoute extends _i23.PageRouteInfo<ExerciceRouteArgs> {
  ExerciceRoute({
    _i24.Key? key,
    required _i28.ExerciceModel exercice,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          ExerciceRoute.name,
          args: ExerciceRouteArgs(
            key: key,
            exercice: exercice,
          ),
          initialChildren: children,
        );

  static const String name = 'ExerciceRoute';

  static const _i23.PageInfo<ExerciceRouteArgs> page =
      _i23.PageInfo<ExerciceRouteArgs>(name);
}

class ExerciceRouteArgs {
  const ExerciceRouteArgs({
    this.key,
    required this.exercice,
  });

  final _i24.Key? key;

  final _i28.ExerciceModel exercice;

  @override
  String toString() {
    return 'ExerciceRouteArgs{key: $key, exercice: $exercice}';
  }
}

/// generated route for
/// [_i13.ExercicesScreen]
class ExercicesRoute extends _i23.PageRouteInfo<void> {
  const ExercicesRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ExercicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExercicesRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ForgetPassword]
class ForgetPassword extends _i23.PageRouteInfo<void> {
  const ForgetPassword({List<_i23.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i15.Home]
class Home extends _i23.PageRouteInfo<void> {
  const Home({List<_i23.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Login]
class Login extends _i23.PageRouteInfo<void> {
  const Login({List<_i23.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i17.MealsDay]
class MealsDay extends _i23.PageRouteInfo<MealsDayArgs> {
  MealsDay({
    _i24.Key? key,
    required String title,
    required List<_i29.MealModel> meals,
    List<_i23.PageRouteInfo>? children,
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

  static const _i23.PageInfo<MealsDayArgs> page =
      _i23.PageInfo<MealsDayArgs>(name);
}

class MealsDayArgs {
  const MealsDayArgs({
    this.key,
    required this.title,
    required this.meals,
  });

  final _i24.Key? key;

  final String title;

  final List<_i29.MealModel> meals;

  @override
  String toString() {
    return 'MealsDayArgs{key: $key, title: $title, meals: $meals}';
  }
}

/// generated route for
/// [_i18.MealsPage]
class MealsRoute extends _i23.PageRouteInfo<MealsRouteArgs> {
  MealsRoute({
    _i24.Key? key,
    required String title,
    _i30.DayMealsModel? meals,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          MealsRoute.name,
          args: MealsRouteArgs(
            key: key,
            title: title,
            meals: meals,
          ),
          initialChildren: children,
        );

  static const String name = 'MealsRoute';

  static const _i23.PageInfo<MealsRouteArgs> page =
      _i23.PageInfo<MealsRouteArgs>(name);
}

class MealsRouteArgs {
  const MealsRouteArgs({
    this.key,
    required this.title,
    this.meals,
  });

  final _i24.Key? key;

  final String title;

  final _i30.DayMealsModel? meals;

  @override
  String toString() {
    return 'MealsRouteArgs{key: $key, title: $title, meals: $meals}';
  }
}

/// generated route for
/// [_i19.NotificationsScreen]
class NotificationsRoute extends _i23.PageRouteInfo<void> {
  const NotificationsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i20.Payment]
class Payment extends _i23.PageRouteInfo<void> {
  const Payment({List<_i23.PageRouteInfo>? children})
      : super(
          Payment.name,
          initialChildren: children,
        );

  static const String name = 'Payment';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i21.ProfileScreen]
class ProfileRoute extends _i23.PageRouteInfo<void> {
  const ProfileRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i22.Rooms]
class Rooms extends _i23.PageRouteInfo<void> {
  const Rooms({List<_i23.PageRouteInfo>? children})
      : super(
          Rooms.name,
          initialChildren: children,
        );

  static const String name = 'Rooms';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}
