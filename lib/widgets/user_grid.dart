import 'package:flutter/material.dart';
import 'package:flutter_web_training/widgets/user_card.dart';

import '../models/user.dart';

class UserList extends StatelessWidget {
  final List<User> users;

  const UserList({
    required this.users,
    Key? key,
  }) : super(key: key);

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
      childAspectRatio: 3 / 1,
      children: users.map((user) => UserCard(user: user)).toList(),
    );
  }
}
