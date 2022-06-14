import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_future_provider_api/features/user/presentation/pages/detail_page.dart';
import 'package:riverpod_future_provider_api/features/user/presentation/riverpod/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(userDataProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Profile'),
        ),
        body: _data.when(
          data: (_data) {
            return Column(
              children: [
                ..._data.map((e) => ListView(shrinkWrap: true, children: [
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              e: e,
                            ),
                          ),
                        ),
                        child: ListTile(
                          title: Text(e.firstName),
                          subtitle: Text(e.lastName),
                          trailing: CircleAvatar(
                            backgroundImage: NetworkImage(e.avatar),
                          ),
                        ),
                      ),
                    ])),
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
