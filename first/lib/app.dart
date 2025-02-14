import 'package:first/AddExpenses.dart';
import 'package:first/LoginPage.dart';
import 'package:first/insightsScreen.dart';
import 'package:first/settingscreen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

  final List<Widget> pages = [
    InsightsScreen(),
    AddExpenseScreen(),
    SettingsScreen()
  ];

class _AppState extends State<App> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login" : (context)=>Loginpage(),
        "/home" : (context) => Scaffold(
            body: pages[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() => _selectedIndex = index);
              },
              backgroundColor: Color(0xFF222831),
              selectedItemColor: Colors.white, // Set selected item color
              unselectedItemColor: Colors.grey, // Set unselected item color
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_sharp),
                  label: "Insights",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: "Add Expense",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_sharp),
                  label: "Profile",
                ),
              ],
            )),
      },
    );
  }
}
