import 'package:flutter/material.dart';
import 'settings/login.dart';
import 'settings/account.dart';
import 'settings/notification.dart';
import 'settings/personalization.dart';

class Profile extends StatelessWidget{
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
            Container(
              width: 250,
              height: 250,
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border.all(color: Colors.amber, width: 6.0),
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/dog-image.jpg')),
              ),
            ),
            ListTile(
              title: Text('Account'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {return Account();},));
              } ,
              splashColor: Colors.amberAccent[400],
              textColor: Colors.deepPurple,
              iconColor: Colors.deepPurple,
              ),
            ListTile(
              title: Text('Notifications'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {return NotificationsPage();},));
              } ,
              splashColor: Colors.amberAccent[400],
              textColor: Colors.deepPurple,
              iconColor: Colors.deepPurple,
              ),
            ListTile(
              title: Text('Personalizations'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {return PersonalizationPage();},));
              } ,
              splashColor: Colors.amberAccent[400],
              textColor: Colors.deepPurple,
              iconColor: Colors.deepPurple,
              ),
            ListTile(
              title: Text('Logout'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {return Login();},));
              } ,
              splashColor: Colors.amberAccent[400],
              textColor: Colors.deepPurple,
              iconColor: Colors.deepPurple,
              ),
      ])
    );
  }
}

