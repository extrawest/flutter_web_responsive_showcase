import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_training/network/api_client.dart';
import 'package:flutter_web_training/repository/users_repository.dart';

import 'config_provider.dart';

final repositoryProvider = FutureProvider<UsersRepositoryImpl>((ref) async {
  final config = ref.watch(configProvider);
  return UsersRepositoryImpl(
    apiClient: ApiClientImpl(
      apiDomain: config.asData!.value.apiDomain,
      apiKey: config.asData!.value.apiKey,
    ),
  );
});
