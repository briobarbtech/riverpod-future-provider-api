import 'package:flutter/material.dart';

class BotonSeguir extends StatelessWidget {
  const BotonSeguir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      width: 110.0,
      child: ElevatedButton(
          onPressed: () => {},
          child: Row(
            children: const [
              Text('Seguir'),
              SizedBox(
                width: 5.0,
              ),
              Icon(Icons.favorite)
            ],
          )),
    );
  }
}
