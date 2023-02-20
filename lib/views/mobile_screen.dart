import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/users_provider.dart';
import '../widgets/user_list.dart';

class MobileScreen extends ConsumerWidget {
  const MobileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);
    return Scaffold(
      body: users.when(
        data: (users) => Stack(
          children: [
            UserList(users: users),
            Positioned.fill(
              child: AutoRouter(
                placeholder: (context) =>
                    const SizedBox(),
                inheritNavigatorObservers: false,
              ),
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text(error.toString())),
      )
    );
  }
}