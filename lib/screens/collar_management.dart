import 'package:flutter/material.dart';
import 'package:gps_dog_collar_flutter/templates/collar_list_item.dart';

class Collar_Management extends StatefulWidget {
  const Collar_Management({super.key});

  @override
  State<Collar_Management> createState() => _CollarManagementState();
}

class _CollarManagementState extends State<Collar_Management> {
  final _collar_name = [
    'Copper',
    'Piper',
  ];

  TextEditingController _AddCollarText = TextEditingController();



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
        controller: _AddCollarText,
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
            setState(() {
              _collar_name.add(_AddCollarText.text);
            });
            print(_AddCollarText.text);
          },
          child: const Text('OK', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  );
}