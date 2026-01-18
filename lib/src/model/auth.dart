import 'package:auth_app/src/model/user.dart';

class Auth {
  final User user;
  final String token;

  Auth({required this.user, required this.token});

  factory Auth.fromJson(Map<String, dynamic> json) {
    return Auth(user: User.fromJson(json['user']), token: json['token']);
  }

  Map<String, dynamic> toJson() {
    return {'user': user.toJson(), 'token': token};
  }
}
