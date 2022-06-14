import 'package:riverpod_future_provider_api/features/user/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getUser();
}
