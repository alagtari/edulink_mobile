import 'package:edulink_mobile/core/injection/injection_container.dart'
    as container;
import 'package:edulink_mobile/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';

void main() async {
  // await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await container.init();
  initializeDateFormatting("fr_FR", null).then((_) => runApp(const MyApp()));
}

final appRouter = sl<AppRouter>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5FDFF),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
