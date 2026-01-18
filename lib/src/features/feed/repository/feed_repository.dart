import 'package:auth_app/src/features/feed/repository/endpoints.dart';
import 'package:auth_app/src/model/failure.dart';
import 'package:auth_app/src/model/post.dart';
import 'package:auth_app/src/network/network.dart';
import 'package:auth_app/src/network/types.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_repository.g.dart';

@Riverpod(keepAlive: true)
FeedRepository feedRepository(Ref ref) {
  return FeedRepository(
    networkRepository: ref.watch(networkRepositoryProvider),
  );
}

class FeedRepository {
  final NetworkRepository _networkRepository;

  FeedRepository({required NetworkRepository networkRepository})
    : _networkRepository = networkRepository;

  FutureEither<List<Post>> getPost() async {
    final result = await _networkRepository.getRequest(url: FeedEndpoints.data);
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (response) {
        try {
          final data = response.data;
          final List<dynamic> postListJson = data["data"];

          final posts = postListJson
              .map((json) => Post.fromJson(json))
              .toList();
          return Right(posts);
        } catch (e) {
          print(e.toString());
          return Left(Failure(message: "Failed to parse response"));
        }
      },
    );
  }
}
