import '../models/user.dart';
import '../network/api_client.dart';

abstract class UsersRepository {
  Future<List<User>> getUsers();
}

class UsersRepositoryImpl implements UsersRepository {
  final ApiClient apiClient;

  UsersRepositoryImpl({required this.apiClient});

  @override
  Future<List<User>> getUsers() async {
    final response = await apiClient.get(
      '/user',
      queryParameters: {
        'limit': 20,
      },
    );
    final users =
        (response.data['data'] as List).map((user) => User.fromJson(user)).toList();
    return users;
  }
}
