import 'package:riverpod_future_provider_api/features/user/data/datasource/datasource.dart';
import 'package:riverpod_future_provider_api/features/user/data/model/user_model.dart';
import 'package:riverpod_future_provider_api/features/user/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource remoteDatasource;

  UserRepositoryImpl(this.remoteDatasource);

  @override
  Future<List<UserModel>> getUser() {
    final userList = remoteDatasource.requestUsers();
    return userList;
  }
}
