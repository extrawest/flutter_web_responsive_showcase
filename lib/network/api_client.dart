import 'package:dio/dio.dart';

abstract class ApiClient {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });
}

class ApiClientImpl implements ApiClient {
  late Dio _dio;
  final String apiDomain;
  final String apiKey;

  final headers = {'Content-Type': 'application/json'};

  ApiClientImpl({required this.apiDomain, required this.apiKey}) {
    headers.addAll({
      'app-id': apiKey,
    });
    _dio = Dio(
      BaseOptions(
        baseUrl: apiDomain,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    );
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    final updatedHeaders = {...this.headers, ...?headers};
    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: Options(headers: updatedHeaders),
    );
  }
}
