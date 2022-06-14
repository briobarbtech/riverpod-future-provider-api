import 'package:dio/dio.dart';
import 'package:riverpod_future_provider_api/core/endpoint.dart';
import 'package:riverpod_future_provider_api/features/user/data/datasource/datasource.dart';
import 'package:riverpod_future_provider_api/features/user/data/model/user_model.dart';

class UserRemoteDatasourceImplDio implements UserRemoteDatasource {
  @override
  Future<List<UserModel>> requestUsers() async {
    Response response = await Dio().get(Endpoint.mockachino);
    if (response.statusCode == 200) {
      final List result = response.data['data'];
      return result.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception(response);
    }
  }
}
