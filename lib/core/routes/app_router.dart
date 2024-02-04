import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/core/routes/guard/auth_guard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Bulletin.page),
        AutoRoute(page: Calendar.page, children: [
          AutoRoute(page: ReunionTimeSlots.page),
          AutoRoute(page: ExerciceTimeSlots.page),
          AutoRoute(page: AbsenceTimeSlots.page),
        ]),
        AutoRoute(page: Cantine.page),
        AutoRoute(page: MealsDay.page),
        AutoRoute(page: Chat.page),
        AutoRoute(page: Rooms.page),
        AutoRoute(page: Event.page),
        AutoRoute(page: Events.page),
        AutoRoute(page: Club.page),
        AutoRoute(page: Clubs.page),
        AutoRoute(page: ForgetPassword.page),
        AutoRoute(page: Home.page, initial: true
            // guards: [AuthGuard()],
            ),
        AutoRoute(page: Login.page),
        AutoRoute(page: Payment.page),
      ];
}
