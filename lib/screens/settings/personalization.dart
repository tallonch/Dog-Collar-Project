import 'package:flutter/material.dart';
import 'package:flutter_settings_screen_ex/flutter_settings_screen_ex.dart';


const List<String> langList = <String>[
  'English',
  'Spanish',
  'Chinese',
  'Japanese'
];

class PersonalizationPage extends StatelessWidget {
  const PersonalizationPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personalizations", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      resizeToAvoidBottomInset: false,
      body: PersonalizationPageButtons()
    );
  }
}

class PersonalizationPageButtons extends StatefulWidget {
  const PersonalizationPageButtons({super.key});

  @override
  State<PersonalizationPageButtons> createState() => _PersonalizationPageButtonsState();
}

class _PersonalizationPageButtonsState extends State<PersonalizationPageButtons> {
  bool _darkmode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          DropDownSettingsTile(
            title: 'Language',
            settingKey: 'keyLanguage',
            selected: 1,
            titleTextStyle: TextStyle(color: Colors.deepPurple, fontSize: 17),
            values: <int, String>{
             1: 'English',
             2: 'Spanish',
             3: 'Chinese',
             4: 'Japanese'
            },
            onChange: (context){}
          ),
          SwitchListTile(
            value: _darkmode,
            title: Text("Darkmode", style: TextStyle(color: Colors.deepPurple),),
            secondary: Icon(Icons.lightbulb),
            onChanged: (bool value) {
              setState(() {
                _darkmode = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

