import 'package:auth_app/src/model/post.dart';

class FeedState {
  final bool loading;
  final List<Post> posts;

  FeedState({required this.loading, required this.posts});

  FeedState copyWith({bool? loading, List<Post>? posts}) {
    return FeedState(
      loading: loading ?? this.loading,
      posts: posts ?? this.posts,
    );
  }

  FeedState.initial() : this(loading: false, posts: []);
}
