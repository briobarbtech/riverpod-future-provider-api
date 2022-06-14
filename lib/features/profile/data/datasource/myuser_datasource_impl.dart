import 'package:dio/dio.dart';
import 'package:riverpod_future_provider_api/core/endpoint.dart';
import 'package:riverpod_future_provider_api/features/profile/data/datasource/myuser_datasource.dart';
import 'package:riverpod_future_provider_api/features/profile/data/model/myuser_model.dart';

class MyUserRemoteDatasourceImpl implements MyUserRemoteDatasource {
  @override
  Future<MyUserModel> requestmyuser() async {
    Response response = await Dio().get(Endpoint.myuser);
    if (response.statusCode == 200) {
      print(response.data['data']);
      return MyUserModel.fromJson(response.data['data']);
    } else {
      throw Exception(response);
    }
  }
}
