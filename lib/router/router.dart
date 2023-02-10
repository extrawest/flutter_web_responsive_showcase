import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../views/user_details_view.dart';
import '../views/user_list_view.dart';
import '../views/user_posts_view.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: UserListView,
      initial: true,
    ),
    AutoRoute(
      path: 'user/:id',
      page: UserDetailsView,
    ),
    AutoRoute(
      path: 'user/:id/posts',
      page: UserPostsView,
    ),
  ],
)

class AppRouter extends _$AppRouter{}