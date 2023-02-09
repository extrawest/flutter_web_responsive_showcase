import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../views/user_details_view.dart';
import '../views/user_list_view.dart';

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
      path: '/:id',
      page: UserDetailsView,
    )
  ],
)

class AppRouter extends _$AppRouter{}