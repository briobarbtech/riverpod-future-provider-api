import 'package:flutter/material.dart';
import 'package:riverpod_future_provider_api/features/user/domain/entities/user.dart';
import 'package:riverpod_future_provider_api/features/user/presentation/widgets/follow_button.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key, required this.e}) : super(key: key);

  final User e;

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
              maxRadius: 80,
            )),
            const SizedBox(
              height: 20.0,
            ),
            Text("${e.firstName} ${e.lastName}",
                style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(
              height: 20.0,
            ),
            Text(e.email),
            const FollowButton()
          ],
        ),
      ),
    );
  }
}
