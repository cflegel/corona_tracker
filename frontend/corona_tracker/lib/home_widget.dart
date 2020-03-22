import 'package:corona_tracker/i18n/appLocalizations.dart';
import 'package:corona_tracker/navigation/ContactScreen.dart';
import 'package:corona_tracker/navigation/HelpScreen.dart';
import 'package:corona_tracker/navigation/MapScreen.dart';
import 'package:corona_tracker/navigation/ReportScreen.dart';
import 'package:corona_tracker/navigation/StatusScreen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    StatusScreen(),
    MapScreen(),
    ReportScreen(),
    HelpScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.people),
            title: Text(localization.bottomNavigationBarStatusText),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.map),
            title: Text(localization.bottomNavigationBarMapText),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.report),
            title: Text(localization.bottomNavigationBarReportText),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.help),
            title: Text(localization.bottomNavigationBarHelpText),
          ),
          BottomNavigationBarItem(
              // TODO: i18n
              title: new Text('Freunde')
            icon: const Icon(Icons.person_add),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
