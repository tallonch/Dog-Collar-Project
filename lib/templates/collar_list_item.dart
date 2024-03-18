import 'package:flutter/material.dart';

class CollarListitem extends StatelessWidget {
  const CollarListitem({super.key, required this.child});
  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Container(
        height: 80,
        color: Colors.amberAccent[100],
        child: Center(
            child: Text(
              child,
              style: const TextStyle(fontSize: 25),)),
      ),
    );
  }
}