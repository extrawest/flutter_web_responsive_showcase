import 'package:flutter/material.dart';
import 'package:flutter_web_training/widgets/post_card.dart';

import '../models/post.dart';

class PostGrid extends StatelessWidget {
  final List<Post> posts;

  const PostGrid({required this.posts, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: GridView.count(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 20,
          ),
          crossAxisCount: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: posts.map((post) => PostCard(post: post)).toList(),
        ),
      ),
    );
  }
}
