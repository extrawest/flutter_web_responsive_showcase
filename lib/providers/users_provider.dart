import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../locator.dart';
import '../repository/users_repository.dart';

final usersProvider = FutureProvider((ref) async {
  final repository = getIt<UsersRepositoryImpl>();
  return await repository.getUsers();
});

final userDetailProvider = FutureProvider.family((ref, String userID) async {
  final repository = getIt<UsersRepositoryImpl>();
  return await repository.getFullUser(userID);
});

final userPostsProvider = FutureProvider.family((ref, String userID) async {
  final repository = getIt<UsersRepositoryImpl>();
  return await repository.getPosts(userID);
});