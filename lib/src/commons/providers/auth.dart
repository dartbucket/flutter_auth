import 'package:auth_app/src/model/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
class CurrentAuth extends _$CurrentAuth {
  @override
  Auth? build() {
    return null;
  }

  void setAuth(Auth? auth) {
    state = auth;
  }

  void clearAuth() {
    state = null;
  }
}
