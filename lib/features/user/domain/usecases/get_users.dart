import 'package:riverpod_future_provider_api/features/user/domain/entities/user.dart';
import 'package:riverpod_future_provider_api/features/user/domain/repository/user_repository.dart';

class GetUsers {
  final UserRepository userRepository;

  GetUsers(this.userRepository);

  Future<List<User>> getUsers() {
    return userRepository.getUser();
  }
}
