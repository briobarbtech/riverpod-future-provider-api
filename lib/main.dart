import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_future_provider_api/features/profile/data/datasource/myuser_datasource_impl.dart';
import 'package:riverpod_future_provider_api/features/user/data/datasource/dio_datasource.dart';

final apiProvider = Provider<UserRemoteDatasourceImplDio>(
    (ref) => UserRemoteDatasourceImplDio());
final myOwnUserProvider =
    Provider<MyUserRemoteDatasourceImpl>((ref) => MyUserRemoteDatasourceImpl());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
                    brightness: Brightness.dark, primarySwatch: Colors.purple)
                .copyWith(secondary: Colors.purpleAccent),
            textTheme: const TextTheme(
                bodyText1: TextStyle(color: Colors.black),
                bodyText2: TextStyle(color: Colors.white)),
            cardColor: Colors.purple),
        home: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('My profile')),
              ElevatedButton(onPressed: () {}, child: const Text('My Friends'))
            ],
          ),
        ));
  }
}
