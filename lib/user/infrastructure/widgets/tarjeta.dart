import 'package:flutter/material.dart';
import 'package:riverpod_future_provider_api/user/domain/model/user_model.dart';
import 'package:riverpod_future_provider_api/user/infrastructure/screens/detail_page.dart';

class Tarjeta extends StatelessWidget {
  const Tarjeta({Key? key, required this.e}) : super(key: key);
  final UserModel e;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailPage(e: e))),
      child: ListTile(
        trailing: CircleAvatar(
          backgroundImage: NetworkImage(e.avatar),
        ),
        title: Text(e.firstname),
        subtitle: Text(e.lastname),
      ),
    );
  }
}
