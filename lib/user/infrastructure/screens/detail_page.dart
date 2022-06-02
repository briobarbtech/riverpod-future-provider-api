import 'package:flutter/material.dart';
import 'package:riverpod_future_provider_api/user/domain/model/user_model.dart';
import 'package:riverpod_future_provider_api/user/infrastructure/widgets/userprofile.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.e}) : super(key: key);
  final UserModel e;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${e.firstname} ${e.lastname}'),
        ),
        body: Center(
          child: Column(
            children: [UserProfile(e: e)],
          ),
        ));
  }
}
