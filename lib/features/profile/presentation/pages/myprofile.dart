import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_future_provider_api/features/profile/presentation/riverpod/provider_myuser.dart';
import 'package:riverpod_future_provider_api/features/user/presentation/widgets/follow_button.dart';

class MyProfile extends ConsumerWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final e = ref.watch(myUserProvider);
    return Card(
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Center(
                child: CircleAvatar(
              backgroundImage: NetworkImage("e.avatar"),
              maxRadius: 80,
            )),
            const SizedBox(
              height: 20.0,
            ),
            Text("", style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(
              height: 20.0,
            ),
            const Text(""),
            const FollowButton()
          ],
        ),
      ),
    );
  }
}
