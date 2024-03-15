import 'package:flutter/material.dart';
import 'package:material3/main.dart';

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: kColorScheme.secondary,
        height: 200,
        width: 200,
        child:
            Text("onSecondary", style: TextStyle(color: kColorScheme.onSecondary)),
      ),
      Container(
        color: kColorScheme.onSecondaryContainer,
        height: 200,
        width: 200,
        child: Text("onSecondaryContainer + onSecondary",
            style: TextStyle(color: kColorScheme.onSecondary)),
      ),
      Container(
        color: kColorScheme.inverseSurface,
        height: 200,
        width: 200,
        child: Text("inverseSurface + onInverseSurface",
            style: TextStyle(color: kColorScheme.onInverseSurface)),
      ),
    ]);
  }
}
