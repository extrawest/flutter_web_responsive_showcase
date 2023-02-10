import 'package:flutter_web_training/models/post.dart';
import 'package:flutter_web_training/models/user_full.dart';

import '../models/user.dart';
import '../network/api_client.dart';

abstract class UsersRepository {
  Future<List<User>> getUsers();

  Future<UserFull> getFullUser(String userID);

  Future<List<Post>> getPosts(String userID);
}

class UsersRepositoryImpl implements UsersRepository {
  final ApiClient apiClient;

  UsersRepositoryImpl({required this.apiClient});

  @override
  Future<List<User>> getUsers({int? userCount = 20}) async {
    try {
      final response = await apiClient.get(
        '/user',
        queryParameters: {
          'limit': userCount,
        },
      );
      final users = (response.data['data'] as List)
          .map((user) => User.fromJson(user))
          .toList();
      return users;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<UserFull> getFullUser(String userID) async {
    try {
      final response = await apiClient.get('/user/$userID');
      return UserFull.fromJson(response.data);
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<List<Post>> getPosts(String userID, {int? postCount = 20}) async {
    try {
      final response = await apiClient.get(
        '/user/$userID/post',
        queryParameters: {
          'limit': postCount,
        },
      );
      final posts = (response.data['data'] as List)
          .map((post) => Post.fromJson(post))
          .toList();
      return posts;
    } catch (error) {
      print(error);
      rethrow;
    }
  }
}
