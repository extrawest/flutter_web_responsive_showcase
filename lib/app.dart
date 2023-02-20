import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_training/providers/navigation_observer_provider.dart';
import 'package:flutter_web_training/providers/router_provider.dart';

class WebApp extends ConsumerWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final navigationObserver = ref.watch(navigationObserverProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Training',
      theme: ThemeData.light().copyWith(useMaterial3: true),
      darkTheme: ThemeData.dark().copyWith(useMaterial3: true),
      themeMode: ThemeMode.dark,
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [navigationObserver],
      ),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
