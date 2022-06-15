import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_future_provider_api/features/user/domain/entities/user.dart';
import 'package:riverpod_future_provider_api/main.dart';

final userDataProvider = FutureProvider<List<User>>((ref) async {
  return ref.read(apiProvider);
});
