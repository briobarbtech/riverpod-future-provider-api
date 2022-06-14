import 'package:riverpod_future_provider_api/features/user/data/model/user_model.dart';

abstract class UserRemoteDatasource {
  Future<List<UserModel>> requestUsers();
}
