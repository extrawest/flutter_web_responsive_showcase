import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class UserDetailsView extends StatelessWidget {
  final User user;
  final String id;

  const UserDetailsView({
    required this.user,
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
            Text(user.firstName),
            Text(user.lastName),
          ],
        ),
      ),
    );
  }
}
