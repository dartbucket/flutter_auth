import 'package:auth_app/src/const/endpoints.dart';

class FeedEndpoints {
  const FeedEndpoints._();
  static const _baseUrl = Endpoints.baseUrl;

  static const data = '$_baseUrl/protected/data';
}
