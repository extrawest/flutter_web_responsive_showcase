import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_training/locator.dart';
import 'package:flutter_web_training/repository/users_repository.dart';
import 'package:flutter_web_training/widgets/user_grid.dart';

import '../models/user.dart';
import '../providers/users_provider.dart';

class UserListView extends StatelessWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (context, ref, child) {
              final users = ref.watch(usersProvider);
              return users.when(
                data: (users) => UserList(users: users),
                loading: () => const CircularProgressIndicator(),
                error: (error, stack) => Text(error.toString()),
              );
            },
          )
        ),
      ),
    );
  }
}
