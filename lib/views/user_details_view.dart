import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_training/locator.dart';
import 'package:flutter_web_training/models/user_full.dart';
import 'package:flutter_web_training/repository/users_repository.dart';

import '../router/router.dart';

class UserDetailsView extends StatelessWidget {
  final String id;

  const UserDetailsView({
    @PathParam('id') required this.id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder<UserFull>(
          future: getIt<UsersRepositoryImpl>().getFullUser(id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final user = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(user.email),
                  Text(user.firstName),
                ],
              );
            }
            else if (snapshot.hasError) {
              return Text('Error, couldn\'t find user with $id id');
            }
            else {
              return const CircularProgressIndicator();
            }
          }
        ),
      ),
    );
  }
}
