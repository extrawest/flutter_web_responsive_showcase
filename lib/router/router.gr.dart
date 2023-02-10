// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    UserListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UserListView(),
      );
    },
    UserDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserDetailsRouteArgs>(
          orElse: () => UserDetailsRouteArgs(id: pathParams.getString('id')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserDetailsView(
          id: args.id,
          key: args.key,
        ),
      );
    },
    UserPostsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserPostsRouteArgs>(
          orElse: () => UserPostsRouteArgs(id: pathParams.getString('id')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserPostsView(
          id: args.id,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          UserListRoute.name,
          path: '/',
        ),
        RouteConfig(
          UserDetailsRoute.name,
          path: 'user/:id',
        ),
        RouteConfig(
          UserPostsRoute.name,
          path: 'user/:id/posts',
        ),
      ];
}

/// generated route for
/// [UserListView]
class UserListRoute extends PageRouteInfo<void> {
  const UserListRoute()
      : super(
          UserListRoute.name,
          path: '/',
        );

  static const String name = 'UserListRoute';
}

/// generated route for
/// [UserDetailsView]
class UserDetailsRoute extends PageRouteInfo<UserDetailsRouteArgs> {
  UserDetailsRoute({
    required String id,
    Key? key,
  }) : super(
          UserDetailsRoute.name,
          path: 'user/:id',
          args: UserDetailsRouteArgs(
            id: id,
            key: key,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'UserDetailsRoute';
}

class UserDetailsRouteArgs {
  const UserDetailsRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final Key? key;

  @override
  String toString() {
    return 'UserDetailsRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [UserPostsView]
class UserPostsRoute extends PageRouteInfo<UserPostsRouteArgs> {
  UserPostsRoute({
    required String id,
    Key? key,
  }) : super(
          UserPostsRoute.name,
          path: 'user/:id/posts',
          args: UserPostsRouteArgs(
            id: id,
            key: key,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'UserPostsRoute';
}

class UserPostsRouteArgs {
  const UserPostsRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final Key? key;

  @override
  String toString() {
    return 'UserPostsRouteArgs{id: $id, key: $key}';
  }
}
