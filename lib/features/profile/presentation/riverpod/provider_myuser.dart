import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_future_provider_api/features/profile/domain/entities/myuser.dart';
import 'package:riverpod_future_provider_api/main.dart';

final myUserProvider = FutureProvider<MyUser>((ref) async {
  return ref.read(myOwnUserProvider).requestmyuser();
});
