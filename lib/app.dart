import 'package:flutter/material.dart';
import 'package:flutter_web_training/responsive_wrapper.dart';

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Training',
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const Scaffold(
        body: ResponsiveWrapper(
          desktop: Placeholder(),
          mobile: Placeholder(),
        ),
      ),
    );
  }
}

