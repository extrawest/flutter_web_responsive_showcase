import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../views/user_details_view.dart';
import '../views/user_list_view.dart';
import '../views/user_posts_view.dart';

part 'router.gr.dart';

@CustomAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: 'users/',
      page: UserListView,
      initial: true,
      children: [
        AutoRoute(
          path: ':id/',
          page: UserDetailsView,
        ),
        AutoRoute(
          path: ':id/posts',
          page: UserPostsView,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter{}