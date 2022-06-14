import 'package:riverpod_future_provider_api/features/profile/data/datasource/myuser_datasource.dart';
import 'package:riverpod_future_provider_api/features/profile/data/model/myuser_model.dart';
import 'package:riverpod_future_provider_api/features/profile/domain/repositories/myuser_repository.dart';

class MyUserRepositoryImpl implements MyUserRepository {
  final MyUserRemoteDatasource myUserRemoteDatasource;

  MyUserRepositoryImpl(this.myUserRemoteDatasource);

  @override
  Future<MyUserModel> getmyuser() {
    final myuser = myUserRemoteDatasource.requestmyuser();
    return myuser;
  }
}
