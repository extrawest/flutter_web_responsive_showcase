import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_training/bloc/users_bloc.dart';
import 'package:flutter_web_training/locator.dart';
import 'package:flutter_web_training/repository/users_repository.dart';
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

class UserListView extends StatelessWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) =>
          UsersBloc(getIt<UsersRepositoryImpl>())..add(FetchUsersEvent()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: BlocBuilder<UsersBloc, UsersState>(
                builder: (context, state) {
                  if (state.status == UsersStatus.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.status == UsersStatus.failure) {
                    return const Center(
                      child: Text('Something went wrong!'),
                    );
                  } else {
                    return UserList(users: state.users);
                  }
                },
              )
            ),
          ),
        ),
      ),
    );
  }
}
