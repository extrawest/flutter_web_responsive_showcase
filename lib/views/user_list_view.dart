import 'package:flutter/material.dart';
import 'package:flutter_web_training/views/desktop_screen.dart';
import 'package:flutter_web_training/views/mobile_screen.dart';
import 'package:flutter_web_training/views/responsive_view.dart';


class UserListView extends StatelessWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: const ResponsiveView(
        mobile: MobileScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
