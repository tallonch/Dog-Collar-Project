import 'package:flutter/material.dart';
import 'package:gps_dog_collar_flutter/templates/collar_list_item.dart';

class Collar_Management extends StatelessWidget{
  Collar_Management({super.key});
  final List _collar_name = [
    'Copper',
    'Piper',
    'Carmel',
    'Chai',
    'Sharkbait',
    'Ruger',
    'Cleopatra',
    'Betsy',
    'Tank',
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
        body: ListView.builder(
            itemCount: _collar_name.length,
            itemBuilder: (context, index) {
              return CollarListitem(child: _collar_name[index],);
            }),
        
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton.extended(
            backgroundColor: Colors.deepPurple,
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
            label: const Text(
                "Add Collar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )
            ),
            elevation: 3,
            extendedPadding: EdgeInsets.all(40),
            onPressed: () {
              print("Add Collar Button Pressed");
              openDialog(context);
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }

  Future openDialog(BuildContext context) => showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Add Collar', style: TextStyle(color: Colors.white),),
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
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}