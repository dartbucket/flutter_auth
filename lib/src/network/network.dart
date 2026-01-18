import 'package:auth_app/src/commons/providers/auth.dart';
import 'package:auth_app/src/commons/providers/dio.dart';
import 'package:auth_app/src/model/failure.dart';
import 'package:auth_app/src/network/types.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'network.g.dart';

@Riverpod(keepAlive: true)
NetworkRepository networkRepository(Ref ref) => NetworkRepository(
  dio: ref.watch(dioProvider),
  authToken: ref.watch(currentAuthProvider)?.token ?? "",
);

class NetworkRepository {
  final Dio _dio;
  final String _authToken;

  NetworkRepository({required Dio dio, required String authToken})
    : _dio = dio,
      _authToken = authToken;

  FutureEither<Response> getRequest({required String url}) async {
    try {
      final result = await _dio.get(
        url,
        options: Options(headers: {"Authorization": "Bearer $_authToken"}),
      );
      return Right(result);
    } catch (e) {
      return Left(Failure(message: "Something went wrong"));
    }
  }

  FutureEither<Response> postRequest({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    try {
      final result = await _dio.post(
        url,
        data: body,
        options: Options(headers: {"Authorization": "Bearer $_authToken"}),
      );
      return Right(result);
    } catch (e) {
      return Left(Failure(message: "Something went wrong"));
    }
  }
}
