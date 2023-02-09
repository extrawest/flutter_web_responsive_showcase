import 'package:flutter/material.dart';
import 'package:flutter_web_training/views/user_list_view.dart';

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
        body: UsersListView()
      ),
    );
  }
}

