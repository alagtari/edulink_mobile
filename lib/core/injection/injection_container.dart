import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/app_prefs.dart';
import 'package:edulink_mobile/core/common_used/dio_provider.dart';
import 'package:edulink_mobile/features/auth/login/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/auth/login/data/repositories/auth_repository_impl.dart';
import 'package:edulink_mobile/features/auth/login/domain/repositories/auth_repository.dart';
import 'package:edulink_mobile/features/calendar/data/data_sources/reunion_remote_data_source.dart';
import 'package:edulink_mobile/features/calendar/data/repositories/reunions_repository_impl.dart';
import 'package:edulink_mobile/features/calendar/domain/repositories/reunions_repository.dart';
import 'package:edulink_mobile/features/cantine/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/cantine/data/repositories/meals_repository_impl.dart';
import 'package:edulink_mobile/features/cantine/domain/repositories/meals_repository.dart';
import 'package:edulink_mobile/features/club/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/club/data/repositories/clubs_repository_impl.dart';
import 'package:edulink_mobile/features/club/domain/repositories/clubs_repository.dart';
import 'package:edulink_mobile/features/events/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/events/data/repositories/events_repository_impl.dart';
import 'package:edulink_mobile/features/events/domain/repositories/events_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  sl.registerLazySingleton<AppPrefs>(
    () => AppPrefs(prefs),
  );
  sl.registerLazySingleton<Dio>(
    () => DioProvider.instance(),
  );
  sl.registerLazySingleton<AuthOnlineDataSource>(
    () => AuthOnlineDataSourceImpl(),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      dataSource: sl(),
    ),
  );

  sl.registerLazySingleton<EventOnlineDataSource>(
    () => EventOnlineDataSourceImpl(),
  );
  sl.registerLazySingleton<EventsRepository>(
    () => EventsRepositoryImpl(dataSource: sl()),
  );

  sl.registerLazySingleton<ClubOnlineDataSource>(
    () => ClubOnlineDataSourceImpl(),
  );
  sl.registerLazySingleton<ClubsRepository>(
    () => ClubsRepositoryImpl(dataSource: sl()),
  );

  sl.registerLazySingleton<MealsOnlineDataSource>(
    () => MealsOnlineDataSourceImpl(),
  );
  sl.registerLazySingleton<MealsRepository>(
    () => MealsRepositoryImpl(dataSource: sl()),
  );

  sl.registerLazySingleton<ReunionOnlineDataSource>(
    () => ReunionOnlineDataSourceImpl(),
  );
  sl.registerLazySingleton<ReunionsRepository>(
    () => ReunionsRepositoryImpl(dataSource: sl()),
  );
}
