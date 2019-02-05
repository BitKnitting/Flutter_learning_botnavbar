import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'activities.dart';
import 'leaderboard.dart';
import 'contactus.dart';

class BottomNavBarPage extends StatefulWidget {
  BottomNavBarPage({this.title});
  final String title;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarPage> {
  // which screen is currently being displayed - Dashboard, Activities...
  int _currentScreen = 0;
  final List<Widget> _screen = [
    DashboardPage(),
    ActivitiesPage(),
    LeaderboardPage(),
    ContactUsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: _screen[_currentScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentScreen,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.star),
            title: new Text('Activities'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.format_align_justify),
            title: new Text('Leaderboard'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Contact Us'),
          ),
        ],
      ),
    );
  }

//
// When the user taps on one of the tabs on the bottom nav bar, which tab
// is tapped is passed in (as the index variable).  We update our knowledge
// of what screen is currently being displayed
//
  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
