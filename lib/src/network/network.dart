import 'package:auth_app/src/network/types.dart';
import 'package:dio/dio.dart';

class NetworkRepository {
  final Dio _dio;
  final String _authToken;

  NetworkRepository({required Dio dio, required String authToken})
    : _dio = dio,
      _authToken = authToken;

  FutureEither<Response> getRequest({required String url}) async {
    throw UnimplementedError();
  }

  FutureEither<Response> postRequest({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    throw UnimplementedError();
  }
}
