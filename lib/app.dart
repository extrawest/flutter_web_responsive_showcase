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
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      routerDelegate: getIt<AppRouter>().delegate(),
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
    );
  }
}
