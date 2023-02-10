import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../locator.dart';
import '../models/post.dart';
import '../repository/users_repository.dart';

class UserPostsView extends StatelessWidget {
  final String id;

  const UserPostsView({
    @PathParam('id') required this.id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder<List<Post>>(
          future: getIt<UsersRepositoryImpl>().getPosts(id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final posts = snapshot.data!;
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  return ListTile(
                    title: Text(post.text),
                    subtitle: Text(post.owner.firstName),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Error, couldn\'t find user with $id id');
            } else {
              return const CircularProgressIndicator();
            }
          },
        )
      ),
    );
  }
}
