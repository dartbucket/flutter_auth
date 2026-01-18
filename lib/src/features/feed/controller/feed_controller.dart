import 'package:auth_app/src/features/feed/repository/feed_repository.dart';
import 'package:auth_app/src/features/feed/state/feed_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'feed_controller.g.dart';

@Riverpod(keepAlive: true)
class FeedController extends _$FeedController {
  @override
  FeedState build() {
    return FeedState.initial();
  }

  Future<void> getFeed() async {
    if (state.loading) {
      return;
    }

    state = state.copyWith(loading: true);

    final feedRepository = ref.read(feedRepositoryProvider);

    final result = await feedRepository.getPost();

    result.fold(
      (failure) {
        state = state.copyWith(loading: false);
      },
      (posts) {
        state = state.copyWith(loading: false, posts: posts);
      },
    );
  }
}
