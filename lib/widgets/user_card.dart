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
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          context.router.push(UserDetailsRoute(id: user.id));
        },
        child: Row(
          children: [
            const SizedBox(width: 14),
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(user.picture),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.title} ${user.firstName} ${user.lastName}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'ID: ${user.id}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Icon(Icons.keyboard_double_arrow_right),
            const SizedBox(width: 14),
          ],
        ),
      ),
    );
  }
}
