import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_web_training/network/api_client.dart';
import 'package:flutter_web_training/repository/users_repository.dart';
import 'package:flutter_web_training/router/router.dart';
import 'package:get_it/get_it.dart';

import 'models/config.dart';

const _configFilePath = 'assets/config.json';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final config = await Config.fromAsset(_configFilePath);

  // Router
  getIt.registerLazySingleton(() => AppRouter());

  // ApiClient
  getIt.registerLazySingleton(
    () => ApiClientImpl(
      apiDomain: config.apiDomain,
      apiKey: config.apiKey,
    ),
  );

  // Repositories
  getIt.registerLazySingleton(
    () => UsersRepositoryImpl(apiClient: getIt<ApiClientImpl>()),
  );

  //observers
  final analytics = FirebaseAnalytics.instance;
  getIt.registerLazySingleton(
    () => FirebaseAnalyticsObserver(analytics: analytics),
  );
}
