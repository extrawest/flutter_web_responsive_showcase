import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.dart';

class UserDetailsView extends StatelessWidget {
  final String id;

  const UserDetailsView({
    @PathParam('id') required this.id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Details View $id'),
            ElevatedButton(
              onPressed: () {
                context.router.push(UserPostsRoute(id: id));
              },
              child: const Text('Go to posts'),
            ),
          ],
        ),
      ),
    );
  }
}
