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
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const UserListView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserDetailsRouteArgs>(
          orElse: () => UserDetailsRouteArgs(id: pathParams.getString('id')));
      return CustomPage<dynamic>(
        routeData: routeData,
        child: UserDetailsView(
          id: args.id,
          key: args.key,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserPostsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserPostsRouteArgs>(
          orElse: () => UserPostsRouteArgs(id: pathParams.getString('id')));
      return CustomPage<dynamic>(
        routeData: routeData,
        child: UserPostsView(
          id: args.id,
          key: args.key,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'users/',
          fullMatch: true,
        ),
        RouteConfig(
          UserListRoute.name,
          path: 'users/',
          children: [
            RouteConfig(
              UserDetailsRoute.name,
              path: ':id/',
              parent: UserListRoute.name,
            ),
            RouteConfig(
              UserPostsRoute.name,
              path: ':id/posts',
              parent: UserListRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [UserListView]
class UserListRoute extends PageRouteInfo<void> {
  const UserListRoute({List<PageRouteInfo>? children})
      : super(
          UserListRoute.name,
          path: 'users/',
          initialChildren: children,
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
          path: ':id/',
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
          path: ':id/posts',
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
