import 'dart:convert';
import 'package:http/http.dart';
import 'package:riverpod_future_provider_api/core/endpoint.dart';
import 'package:riverpod_future_provider_api/features/user/data/datasource/datasource.dart';
import 'package:riverpod_future_provider_api/features/user/data/model/user_model.dart';

class UserRemoteDatasourceImplHttp implements UserRemoteDatasource {
  @override
  Future<List<UserModel>> requestUsers() async {
    Response response = await get(Uri.parse(Endpoint.endpointRegres));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
