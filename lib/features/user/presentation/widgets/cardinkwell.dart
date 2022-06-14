import 'package:flutter/material.dart';
import 'package:riverpod_future_provider_api/features/user/domain/entities/user.dart';
import 'package:riverpod_future_provider_api/features/user/presentation/pages/detail_page.dart';

class CardInkwell extends StatelessWidget {
  const CardInkwell({Key? key, required this.e}) : super(key: key);

  final User e;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailPage(e: e))),
      child: ListTile(
        trailing: CircleAvatar(
          backgroundImage: NetworkImage(e.avatar),
        ),
        title: Text(e.firstName),
        subtitle: Text(e.lastName),
        selectedColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
