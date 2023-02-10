import 'package:flutter/material.dart';
import 'package:flutter_web_training/widgets/post_card.dart';

import '../models/post.dart';

class PostGrid extends StatelessWidget {
  final List<Post> posts;

  const PostGrid({required this.posts, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 700;
    final isTablet = MediaQuery.of(context).size.width >= 1100;
    final tabletPadding = MediaQuery.of(context).size.width * 0.2;
    return GridView.count(
      padding: EdgeInsets.symmetric(
        horizontal: isTablet ? tabletPadding : 32,
        vertical: 20,
      ),
      crossAxisCount: isMobile ? 1 : 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: posts.map((post) => PostCard(post: post)).toList(),
    );
  }
}
