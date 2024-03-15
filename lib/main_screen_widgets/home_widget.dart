import 'package:flutter/material.dart';
import 'package:themoviedb/main.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(
        color: kColorScheme.primary,
        height: 200,
        width: 200,
        child: Text("onPrimary", style: TextStyle(color: kColorScheme.onPrimary)),
      ),
      Container(
        color: kColorScheme.onPrimaryContainer,
        height: 200,
        width: 200,
        child:
            Text("onPrimaryContainer + onPrimary", style: TextStyle(color: kColorScheme.onPrimary)),
      ),
      Container(
        color: kColorScheme.inversePrimary,
        height: 200,
        width: 200,
        child: Text("inversePrimary + onPrimary",
            style: TextStyle(color: kColorScheme.onPrimary)),
      ),
      ]
    );
  }
}