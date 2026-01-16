import 'package:auth_app/src/features/auth/view/login_view.dart';
import 'package:auth_app/src/features/auth/view/signup_view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

GoRouter authRouter(Ref ref) => GoRouter(
  initialLocation: LoginView.routePath,
  routes: [
    GoRoute(
      path: LoginView.routePath,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: SignupView.routePath,
      builder: (context, state) => const SignupView(),
    ),
  ],
);
