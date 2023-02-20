import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_training/widgets/user_card.dart';

import '../models/user.dart';
import '../router/router.dart';

class UserList extends StatelessWidget {
  final List<User> users;

  const UserList({
    required this.users,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return UserCard(
          user: user,
          onTap: () {
            context.router.push(UserDetailsRoute(id: user.id));
          },
        );
      },
    );
  }
}
