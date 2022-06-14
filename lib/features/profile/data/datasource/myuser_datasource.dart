import 'package:riverpod_future_provider_api/features/profile/data/model/myuser_model.dart';

abstract class MyUserRemoteDatasource {
  Future<MyUserModel> requestmyuser();
}
