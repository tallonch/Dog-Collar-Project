import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({super.key, required this.child});
  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
      child: Container(
        height: 50,
        color: Colors.amberAccent[400],
        child: Center(
            child: Text(
              child,
              style: const TextStyle(fontSize: 25, color: Colors.deepPurple))),

      ),
    );
  }
}