import 'package:auth_app/src/features/feed/view/feed_view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) => GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const FeedView())],
);
