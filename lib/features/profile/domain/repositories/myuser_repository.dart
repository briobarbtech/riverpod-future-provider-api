import 'package:riverpod_future_provider_api/features/profile/domain/entities/myuser.dart';

abstract class MyUserRepository {
  Future<MyUser> getmyuser();
}
