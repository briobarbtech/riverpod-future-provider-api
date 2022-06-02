import 'package:riverpod_future_provider_api/user/domain/model/user_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  String endpointRegres = 'https://reqres.in/api/users?page=2';
  String endpointMockachino =
      'https://www.mockachino.com/046eb99c-ae84-49/users';

  Future<List<UserModel>> getUser() async {
    Response response = await Dio().get(endpointMockachino);
    //print(response.data['data']);
    if (response.statusCode == 200) {
      final List result = response.data['data'];
      return result.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception(response);
    }
  }
}
