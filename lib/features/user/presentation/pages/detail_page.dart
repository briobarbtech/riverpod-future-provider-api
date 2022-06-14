import 'package:flutter/material.dart';
import 'package:riverpod_future_provider_api/features/user/domain/entities/user.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.e}) : super(key: key);
  final User e;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                maxRadius: 60,
                backgroundImage: NetworkImage(e.avatar),
              ),
            ),
            Text(
              "${e.firstName} ${e.lastName}",
            ),
            Text(e.email),
          ],
        ),
      ),
    );
  }
}
