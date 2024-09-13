import 'package:auto_route/auto_route.dart';
// import 'package:edulink_mobile/core/routes/guard/auth_guard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppFrame.page,
          children: [
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.noTransition,
              page: Home.page,
              initial: true,
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.noTransition,
              page: Payment.page,
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.noTransition,
              page: Emploi.page,
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.noTransition,
              page: Bulletin.page,
            ),
            AutoRoute(page: ExercicesRoute.page),
            AutoRoute(page: ExerciceRoute.page),
            AutoRoute(page: NotificationsRoute.page),
            AutoRoute(page: ProfileRoute.page),
            AutoRoute(page: Calendar.page),
            AutoRoute(page: Cantine.page),
            AutoRoute(page: MealsDay.page),
            AutoRoute(page: Chat.page),
            AutoRoute(page: Rooms.page),
            AutoRoute(page: Event.page),
            AutoRoute(page: Events.page),
            AutoRoute(page: Club.page),
            AutoRoute(page: Clubs.page),
          ],
        ),
        AutoRoute(
          page: Login.page,
          initial: true,
        ),
        AutoRoute(page: ChooseChildRoute.page),
        AutoRoute(page: ForgetPassword.page),
      ];
}
