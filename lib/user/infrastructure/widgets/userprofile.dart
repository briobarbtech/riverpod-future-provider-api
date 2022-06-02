import 'package:flutter/material.dart';
import 'package:riverpod_future_provider_api/user/domain/model/user_model.dart';
import 'package:riverpod_future_provider_api/user/infrastructure/widgets/botonseguir.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key, required this.e}) : super(key: key);
  final UserModel e;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(e.avatar),
                maxRadius: 60,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              "${e.firstname} ${e.lastname}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(e.email),
            const SizedBox(
              height: 5.0,
            ),
            const BotonSeguir(),
          ],
        ),
      ),
    );
  }
}
