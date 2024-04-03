import 'package:flutter/material.dart';
import 'package:gps_dog_collar_flutter/templates/settings_list.dart';

class Profile extends StatelessWidget{
  Profile({super.key});

  //List of button names,
  final List settingsButtonNames = [
    'Account',
    'Notifications',
    'Updates',
    'Personalization',
    'Log Out'
  ];

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
                print("Account Button Pressed");
              } ,
              splashColor: Colors.amberAccent[400],
              ),
            ListTile(
              title: Text('Notifications'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                print("Notifications Button Pressed");
              } ,
              splashColor: Colors.amberAccent[400],
              ),
            ListTile(
              title: Text('Placeholder'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                print("Placeholder Button Pressed");
              } ,
              splashColor: Colors.amberAccent[400],
              ),
            ListTile(
              title: Text('Personalizations'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                print("Personalizations Button Pressed");
              } ,
              splashColor: Colors.amberAccent[400],
              ),
            ListTile(
              title: Text('Logout'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                print("Logout Button Pressed");
              } ,
              splashColor: Colors.amberAccent[400],
              ),
      ])
    );
  }
}

