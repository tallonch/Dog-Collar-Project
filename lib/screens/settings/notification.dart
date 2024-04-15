import 'package:flutter/material.dart';
import 'package:flutter_settings_screen_ex/flutter_settings_screen_ex.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage ({super.key});


  @override
  Widget build(BuildContext context) {
    bool _activity = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      resizeToAvoidBottomInset: false,
      body: NotificationsPageList(),
    );
  }
}

class NotificationsPageList extends StatefulWidget {
 const NotificationsPageList({super.key});

  @override
  State<NotificationsPageList> createState() => _NotificationsPageListState();
}

class _NotificationsPageListState extends State<NotificationsPageList> {
  bool _activity = false;
  bool _news = false;
  bool _updates = false;


  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
            SwitchListTile(
              value: _activity,
              title: Text("Activity", style: TextStyle(color: Colors.deepPurple),),
              secondary: Icon(Icons.person),
              onChanged: (bool value) {
                setState(() {
                  _activity = value;
                });
              },
            ),
            SwitchListTile(
              value: _news,
              title: Text("News", style: TextStyle(color: Colors.deepPurple),),
              secondary: Icon(Icons.newspaper),
              onChanged: (bool value) {
                setState(() {
                  _news = value;
                });
              },
            ),
            SwitchListTile(
              value: _updates,
              title: Text("Updates", style: TextStyle(color: Colors.deepPurple),),
              secondary: Icon(Icons.arrow_upward),
              onChanged: (bool value) {
                setState(() {
                  _updates = value;
                });
              },
            ),
          ],
        )
    );
  }
}

