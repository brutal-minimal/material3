// input must be in a format of 255, 255, 255, 255

import 'package:flutter/material.dart';

class UserInputWidget extends StatefulWidget {
  const UserInputWidget({super.key});

  @override
  State<UserInputWidget> createState() => _UserInputWidgetState();
}

class _UserInputWidgetState extends State<UserInputWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            Text(
                "Welcome to material 3! below you can introduce your ARGB value! good luck with that",
                softWrap: true,
                style: TextStyle(fontSize: 18)),
            SizedBox(
              height: 40,
            ),
            TextField(
                
                decoration: InputDecoration(labelText: "Opacity"),
                maxLength: 3,
                keyboardType: TextInputType.numberWithOptions(
                    signed: false, decimal: false)),
            TextField(
                decoration: InputDecoration(labelText: "Red"),
                maxLength: 3,
                keyboardType: TextInputType.numberWithOptions(
                    signed: false, decimal: false)),
            TextField(
                decoration: InputDecoration(labelText: "Green"),
                maxLength: 3,
                keyboardType: TextInputType.numberWithOptions(
                    signed: false, decimal: false)),
            TextField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Blue"),
                maxLength: 3,
                keyboardType: TextInputType.numberWithOptions(
                    signed: false, decimal: false)),
            //ElevatedButton(onPressed: onPressed, child: child)
            
          ],
        ),
      ),
    );
  }
}




ColorScheme userInputColors (int uAlpha, int uRed, int uGreen, int uBlue){

  ColorScheme userColorScheme = ColorScheme.fromSeed(seedColor: Color.fromARGB (uAlpha, uRed, uGreen, uBlue));
  return userColorScheme;

}

