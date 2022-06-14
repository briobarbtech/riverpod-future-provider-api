import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_future_provider_api/features/user/data/datasource/dio_datasource.dart';
import 'package:riverpod_future_provider_api/features/user/data/model/user_model.dart';

/* final counterProvider = StateProvider((ref) => 0);
 */
final apiProvider = Provider<UserRemoteDatasourceImplDio>(
    (ref) => UserRemoteDatasourceImplDio());

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.read(apiProvider).requestUsers();
});
