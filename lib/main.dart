import 'package:flutter/material.dart';
import 'main_screen_widget.dart';
import 'input_widget.dart';

//video no 123 of maximilian, learrning how to create a theme for my app

 var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 136, 94, 227),
);


var kLogoText = const Text(" M A T E R I A L  3");

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        // GENERAL CONFIGURATION
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          errorStyle: TextStyle(backgroundColor: kColorScheme.error),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: kColorScheme.error,
            ),
          ),
          errorMaxLines: 1,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                width: 1,
                color: kColorScheme.inversePrimary,
                style: BorderStyle.solid),
          ),
        ),
        // COLOR
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: kColorScheme.background,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.primary,
          centerTitle: true,
          elevation: 2,
          foregroundColor: kColorScheme.onPrimary,
        ),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
            //backgroundColor: kColorScheme.primary,
/*             selectedIconTheme: IconThemeData(
              color: kColorScheme.inversePrimary,
              shadows: [
              Shadow(
                  color: kColorScheme.shadow,
                  blurRadius: 20,
                  offset: const Offset(0, 1))
            ]), */
            selectedItemColor: kColorScheme.inversePrimary,
            selectedLabelStyle: TextStyle(
              shadows: [
              Shadow(
                  color: kColorScheme.shadow,
                  blurRadius: 15,
                  offset: const Offset(0, 1))
            ]
            ),
            unselectedItemColor: kColorScheme.onPrimaryContainer,
             unselectedIconTheme: IconThemeData(
              color: kColorScheme.inverseSurface
            ), 
            unselectedLabelStyle: TextStyle(color: kColorScheme.inverseSurface),
            ),


        textTheme: ThemeData().textTheme.copyWith(
              displayLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kColorScheme.onBackground),
              bodyLarge:
                  TextStyle(fontSize: 24, color: kColorScheme.onBackground),
              bodyMedium:
                  TextStyle(fontSize: 18, color: kColorScheme.onBackground),
              bodySmall:
                  TextStyle(fontSize: 16, color: kColorScheme.onBackground),
            ),
        // COMPONENT THEMES

        /* buttonTheme: const ButtonThemeData().copyWith(
          buttonColor: kColorScheme.primary,
          shape: CircleBorder(eccentricity: 0.8, side: BorderSide(width: 1, color: kColorScheme.primary))
        ), */
        cardTheme: const CardTheme().copyWith(
            margin: const EdgeInsets.all(6), color: kColorScheme.surface),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: const ButtonStyle().copyWith(
          backgroundColor:
              MaterialStatePropertyAll(kColorScheme.onPrimaryContainer),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(5)),
          ),
        )),

        outlinedButtonTheme: OutlinedButtonThemeData(
            style: const ButtonStyle().copyWith(
          backgroundColor:
              MaterialStatePropertyAll(kColorScheme.secondaryContainer),
          foregroundColor:
              MaterialStatePropertyAll(kColorScheme.onSecondaryContainer),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(5),
              side: const BorderSide(width: 0.8))),
          //side: const MaterialStatePropertyAll(BorderSide(color: Colors.transparent),),
          shadowColor: MaterialStatePropertyAll(kColorScheme.shadow),
        )),
        textButtonTheme: TextButtonThemeData(
            style: const ButtonStyle().copyWith(
                backgroundColor: MaterialStatePropertyAll(kColorScheme.primary),
                foregroundColor:
                    MaterialStatePropertyAll(kColorScheme.onPrimary),
                //overlayColor: MaterialStatePropertyAll(Colors.amber),
                elevation: const MaterialStatePropertyAll(2),
                textStyle: const MaterialStatePropertyAll(TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                ),
                //side: MaterialStatePropertyAll(BorderSide(color: kColorScheme.outline),),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(5)),
                ))),
      ),
      routes: {
        //if i want to go back to the authorization screen, i must change "/" to "/auth", AND use pushNamed istead of pushReplacementNamed
        "/": (context) => const MainScreenWidget(),
      },
      initialRoute: "/",
      // i rlly donno what the difference beween (RouteSettings settings) and (settings) down there
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text(
                  "Navigation error occured! Ill do something nice here later, to balance this user experience stress"),
            ),
          );
        });
      },
    );
  }
}
