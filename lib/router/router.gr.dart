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
      final args = routeData.argsAs<UserDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserDetailsView(
          user: args.user,
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
          path: '/:id',
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
    required User user,
    required String id,
    Key? key,
  }) : super(
          UserDetailsRoute.name,
          path: '/:id',
          args: UserDetailsRouteArgs(
            user: user,
            id: id,
            key: key,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'UserDetailsRoute';
}

class UserDetailsRouteArgs {
  const UserDetailsRouteArgs({
    required this.user,
    required this.id,
    this.key,
  });

  final User user;

  final String id;

  final Key? key;

  @override
  String toString() {
    return 'UserDetailsRouteArgs{user: $user, id: $id, key: $key}';
  }
}
