import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gps_dog_collar_flutter/templates/edit_collar_dialog.dart';

class CollarListitem extends StatelessWidget {
  const CollarListitem({super.key, required this.child});
  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child:
      Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.amberAccent[100],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                      child: Text(
                        child,
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.deepPurple)
                      )
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        openDialog(context);
                      },
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future openDialog(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Edit Collar', style: TextStyle(color: Colors.white),),
        content: TextField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
          ),
          style: TextStyle(color: Colors.white),

        ),
        backgroundColor: Colors.deepPurple,
        contentTextStyle: const TextStyle(color: Colors.white),

        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'OK');

            },
            child: const Text('OK', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
}