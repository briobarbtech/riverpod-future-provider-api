import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_future_provider_api/features/user/presentation/riverpod/provider.dart';
import 'package:riverpod_future_provider_api/features/user/presentation/widgets/cardinkwell.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(userDataProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Profile'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: data.when(
          data: (data) {
            return Column(
              children: [
                ...data.map((e) =>
                    ListView(shrinkWrap: true, children: [CardInkwell(e: e)])),
              ],
            );
          },
          error: (err, s) => Text(err.toString()),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
