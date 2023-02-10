import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_training/bloc/users_bloc.dart';
import 'package:flutter_web_training/locator.dart';
import 'package:flutter_web_training/repository/users_repository.dart';
import 'package:flutter_web_training/widgets/user_grid.dart';

class UserListView extends StatelessWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) =>
          UsersBloc(getIt<UsersRepositoryImpl>())..add(FetchUsersEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Users'),
        ),
        body: SafeArea(
          child: Center(
            child: BlocBuilder<UsersBloc, UsersState>(
              builder: (context, state) {
                if (state.status == UsersStatus.loading ||
                    state.status == UsersStatus.initial) {
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
            ),
          ),
        ),
      ),
    );
  }
}
