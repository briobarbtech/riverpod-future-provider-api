import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_future_provider_api/user/domain/domain_module.dart';
import 'package:riverpod_future_provider_api/user/infrastructure/widgets/tarjeta.dart';

class ContactPage extends ConsumerWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(userDataProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Contactos')),
      body: _data.when(
          data: (_data) {
            return Column(
              children: [
                ..._data.map((e) => ListView(
                      shrinkWrap: true,
                      children: [Tarjeta(e: e)],
                    ))
              ],
            );
          },
          error: (err, s) => Text(err.toString()),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
