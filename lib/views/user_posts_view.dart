import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/users_provider.dart';
import '../widgets/post_grid.dart';

class UserPostsView extends StatelessWidget {
  final String id;

  const UserPostsView({
    @PathParam('id') required this.id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final posts = ref.watch(userPostsProvider(id));
          return posts.when(
            data: (posts) => PostGrid(posts: posts),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text(error.toString())),
          );
        },
      ),
    );
  }
}
