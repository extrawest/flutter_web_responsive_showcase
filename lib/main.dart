import 'package:flutter/material.dart';

void main() {
  runApp(const WebScaffold());
}

class WebScaffold extends StatelessWidget {
  const WebScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Scaffold',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: const WebScaffoldHome(),
    );
  }
}

class WebScaffoldHome extends StatelessWidget {
  const WebScaffoldHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Scaffold'),
      ),
      body: const Center(
        child: Text('Web Scaffold Home'),
      ),
    );
  }
}
