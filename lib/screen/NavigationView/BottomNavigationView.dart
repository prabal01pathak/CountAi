import 'package:count_ai/screen/Pages/AccountPage.dart';
import 'package:count_ai/screen/Pages/HistoryPage.dart';
import 'package:count_ai/screen/Pages/HomePage.dart';
import 'package:flutter/material.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {

  int index =1;

  final screens = [
    AccountPage(),
    HomePage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[index],
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.black12,
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)
        )
      ),
      child: NavigationBar(
        height: 70,
        backgroundColor: Colors.red.shade100,
        selectedIndex: index,
        onDestinationSelected: (index) =>
            setState(()=> this.index = index),
        destinations: [
          NavigationDestination(icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person,color: Colors.red,),
              label: 'Account'),
          NavigationDestination(icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home,color: Colors.red,),
              label: 'Home'),
          NavigationDestination(icon: Icon(Icons.history_outlined),
              selectedIcon: Icon(Icons.history,color: Colors.red,),
              label: 'History'),
        ],

      ),
    ),
  );
}
