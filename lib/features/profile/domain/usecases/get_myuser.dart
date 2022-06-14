import 'package:riverpod_future_provider_api/features/profile/domain/entities/myuser.dart';
import 'package:riverpod_future_provider_api/features/profile/domain/repositories/myuser_repository.dart';

class GetMyUser {
  final MyUserRepository myUserRepository;

  GetMyUser(this.myUserRepository);

  Future<MyUser> getmyuser() {
    return myUserRepository.getmyuser();
  }
}
