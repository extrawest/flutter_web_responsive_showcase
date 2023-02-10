import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class UserPostsView extends StatelessWidget {
  final String id;

  const UserPostsView({
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
            Text('User Posts View $id'),
          ],
        ),
      ),
    );
  }
}
