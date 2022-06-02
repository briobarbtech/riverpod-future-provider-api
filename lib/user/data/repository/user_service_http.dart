import 'dart:convert';
import 'package:http/http.dart';
import 'package:riverpod_future_provider_api/user/domain/model/user_model.dart';

class ApiService {
  String endpoint = 'https://reqres.in/api/users?page=2';
  String endpointMockachino =
      'https://www.mockachino.com/046eb99c-ae84-49/users';

  Future<List<UserModel>> getUser() async {
    Response response = await get(Uri.parse(endpoint));
    print(response);
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
