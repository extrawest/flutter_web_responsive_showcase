import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_training/providers/repository_provider.dart';


final usersProvider = FutureProvider((ref) async {
  final repository = ref.watch(repositoryProvider).asData!.value;
  return await repository.getUsers();
});

final userDetailProvider = FutureProvider.family((ref, String userID) async {
  final repository = ref.watch(repositoryProvider).asData!.value;
  return await repository.getFullUser(userID);
});

final userPostsProvider = FutureProvider.family((ref, String userID) async {
  final repository = ref.watch(repositoryProvider).asData!.value;
  return await repository.getPosts(userID);
});