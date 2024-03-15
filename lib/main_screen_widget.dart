import 'package:flutter/material.dart';
import 'package:material3/main.dart';
import 'package:material3/main_screen_widgets/home_widget.dart';
import 'package:material3/main_screen_widgets/movies_widget.dart';
import 'package:material3/main_screen_widgets/shows_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});
  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kLogoText,
      ),
      body: const <Widget>[
        HomeWidget(),
        MoviesWidget(),
        ShowsWidget()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home", selectedIcon: Icon(Icons.home)),
          NavigationDestination(icon: Icon(Icons.movie_outlined), label: "Movies", selectedIcon: Icon(Icons.movie),),
          NavigationDestination(icon: Icon(Icons.tv_outlined), label: "Shows", selectedIcon: Icon(Icons.tv),),
        ],
        onDestinationSelected: (int index) {
          setState(() {
                //this if statement prevents from doing unseen extra work of computing
            if (currentPageIndex == index) {
              return;
            }
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
         //DECORATIONS, WHICH ARE NOT APPLIABLE FROM THE MAIN, AS SHOULD
        backgroundColor: kColorScheme.inversePrimary,
        indicatorColor: kColorScheme.onInverseSurface,
        
        //surfaceTintColor: ,       
      ),
    );
  }
}
