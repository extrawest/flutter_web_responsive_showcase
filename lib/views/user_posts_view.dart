import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../locator.dart';
import '../models/post.dart';
import '../repository/users_repository.dart';
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
      appBar: AppBar(
        title: const Text('User Posts'),
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: FutureBuilder<List<Post>>(
        future: getIt<UsersRepositoryImpl>().getPosts(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final posts = snapshot.data!;
            return PostGrid(posts: posts);
          } else if (snapshot.hasError) {
            return Text('Error, couldn\'t find user with $id id');
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
