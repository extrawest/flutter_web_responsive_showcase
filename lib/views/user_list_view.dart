import 'package:flutter/material.dart';
import 'package:flutter_web_training/widgets/user_grid.dart';

import '../models/user.dart';

final _users = List.generate(
  100,
  (index) => User(
    id: index.toString(),
    title: 'Mr $index',
    firstName: 'John $index',
    lastName: 'Doe $index',
    picture: '',
  ),
);

class UsersListView extends StatelessWidget {
  const UsersListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: UserList(
            users: _users,
          ),
        ),
      ),
    );
  }
}
