import 'package:flutter/material.dart';
import 'package:flutter_web_training/locator.dart';
import 'package:flutter_web_training/repository/users_repository.dart';
import 'package:flutter_web_training/widgets/user_grid.dart';

import '../models/user.dart';

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
          child: FutureBuilder<List<User>>(
            future: getIt<UsersRepositoryImpl>().getUsers(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return UserList(users: snapshot.data!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
