import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_future_provider_api/user/data/repository/user_service_http.dart';

final apiProvider = Provider<ApiService>((ref) => ApiService());
