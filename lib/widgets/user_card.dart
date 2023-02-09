import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_training/router/router.dart';

import '../models/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(UserDetailsRoute(user: user, id: user.id));
      } ,
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(user.firstName),
              Text(user.lastName),
            ],
          ),
        )
      ),
    );
  }
}
