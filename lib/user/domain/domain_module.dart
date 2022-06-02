import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_future_provider_api/user/data/data_module.dart';
import 'package:riverpod_future_provider_api/user/domain/model/user_model.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.read(apiProvider).getUser();
});
