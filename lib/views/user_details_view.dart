import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_training/locator.dart';
import 'package:flutter_web_training/models/user_full.dart';
import 'package:flutter_web_training/repository/users_repository.dart';
import 'package:flutter_web_training/widgets/user_card.dart';
import 'package:flutter_web_training/widgets/user_details_card.dart';

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
      appBar: AppBar(
        title: const Text('User Details'),
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: FutureBuilder<UserFull>(
          future: getIt<UsersRepositoryImpl>().getFullUser(id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final user = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    UserCard(user: user),
                    const SizedBox(height: 20),
                    UserDetailCard(user: user),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        context.router.push(UserPostsRoute(id: user.id));
                      },
                      child: const Text('View Posts'),
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Text('Error, couldn\'t find user with $id id');
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
