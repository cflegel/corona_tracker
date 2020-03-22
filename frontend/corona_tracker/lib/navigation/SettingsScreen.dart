import 'package:corona_tracker/i18n/appLocalizations.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(AppLocalizations.of(context).SettingsScreen_AppBarTitleText),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to Home'),
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          /*onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => StatusScreen(),
                  ))*/
        ),
      ),
    );
  }
}
