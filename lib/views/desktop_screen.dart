import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_training/widgets/user_list.dart';

import '../providers/users_provider.dart';

class DesktopScreen extends ConsumerWidget {
  const DesktopScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);
    return Scaffold(
        body: users.when(
      data: (users) => Row(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: UserList(users: users),
          ),
          Expanded(
            child: AutoRouter(
              placeholder: (context) =>
                  const Center(child: Text('Select a user')),
              inheritNavigatorObservers: false,
            ),
          ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text(error.toString())),
    ));
  }
}
