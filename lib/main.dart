import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_future_provider_api/features/user/data/datasource/dio_datasource.dart';
import 'package:riverpod_future_provider_api/features/user/data/repository/user_repository_impl.dart';
import 'package:riverpod_future_provider_api/features/user/presentation/pages/homepage.dart';

final apiProvider = Provider((ref) =>
    UserRepositoryImpl(UserRemoteDatasourceImplDio())
        .remoteDatasource
        .requestUsers());
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
        home: const HomePage());
  }
}
