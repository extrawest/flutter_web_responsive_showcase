import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_training/locator.dart';
import 'package:flutter_web_training/router/router.dart';

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Training',
      theme: ThemeData.light().copyWith(useMaterial3: true),
      darkTheme: ThemeData.dark().copyWith(useMaterial3: true),
      themeMode: ThemeMode.dark,
      routerDelegate: AutoRouterDelegate(
        getIt<AppRouter>(),
        navigatorObservers: () => [getIt<FirebaseAnalyticsObserver>()],
      ),
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
    );
  }
}
