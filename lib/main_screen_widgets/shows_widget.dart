import 'package:flutter/material.dart';
import 'package:material3/main.dart';

class ShowsWidget extends StatelessWidget {
  const ShowsWidget({super.key});

  @override
  Widget build(BuildContext context) {
return Column(children: [
      Container(
        decoration: BoxDecoration(
          color: kColorScheme.tertiary,
          border: Border.all(color: kColorScheme.outline)),
        
        height: 200,
        width: 200,
        child: Text("onTertiary",
            style: TextStyle(color: kColorScheme.onTertiary)),
      ),
      Container(
        decoration: BoxDecoration(
            color: kColorScheme.onTertiary,
            border: Border.all(color: kColorScheme.outline)),
        width: 200,
        child: Text("onTertiaryContainer + onTerciary",
            style: TextStyle(color: kColorScheme.onTertiaryContainer)),
      ),
      Container(
        decoration: BoxDecoration(color: kColorScheme.error,
            border: Border.all(color: kColorScheme.outline)),
        
        height: 100,
        width: 200,
        child: Text("error + onErrorContainer",
            style: TextStyle(color: kColorScheme.onErrorContainer)),
      ),
      Container(
        decoration: BoxDecoration(
          color: kColorScheme.background,
          border: Border.all(color: kColorScheme.outline)
        ),
        
        height: 100,
        width: 200,
        child: Text("background + onBackground",
            style: TextStyle(color: kColorScheme.onBackground)),
      ),
    ]);
  }
}
