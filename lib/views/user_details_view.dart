import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_training/providers/users_provider.dart';
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
      body: Consumer(
        builder: (context, ref, child) {
          final user = ref.watch(userDetailProvider(id));
          return user.when(
            data: (user) => Padding(
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
                      context.router.popForced();
                    },
                    child: const Text('Back'),
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.push(UserPostsRoute(id: user.id));
                    },
                    child: const Text('View Posts'),
                  ),
                ],
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text(error.toString())),
          );
        },
      ),
    );
  }
}
