import 'package:flutter/material.dart';
import 'package:gps_dog_collar_flutter/templates/settings_list.dart';

class Profile extends StatelessWidget{
  Profile({super.key});

  //List of button names,
  final List _settings_button_names = [
    'Account',
    'Notifications',
    'Updates',
    'Personalization',
    'Log Out'
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
        body: ListView.builder(
          itemCount: _settings_button_names.length,
          itemBuilder: (context, index) {
            return SettingsList(child: _settings_button_names[index],);
          },
        )
    );
  }
}