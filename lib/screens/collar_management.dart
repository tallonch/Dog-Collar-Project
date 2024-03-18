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
        // Center(
        //   child: Row(
        //       children: <Widget>[
        //         const Expanded(
        //           flex: 1,
        //           child: Column(),
        //         ),
        //         Expanded(
        //             flex: 8,
        //             child:
        //               Column(
        //                 children: [
        //                   ElevatedButton.icon(
        //                     onPressed: () {
        //                       print("Edit Collar Button Pressed");
        //                     },
        //                     icon: const Icon(
        //                       Icons.edit,
        //                       color: Colors.white,
        //                       size: 30,
        //                     ),
        //                     style: ElevatedButton.styleFrom(
        //                       shape: RoundedRectangleBorder(
        //                           borderRadius: BorderRadius.circular(5.0)
        //                       ),
        //                       minimumSize: Size(double.infinity, 50),
        //                       padding: EdgeInsets.all(10),
        //                     ),
        //                     label: Text("Edit Collar"),
        //                   ),
        //                 ],
        //               ),
        //         ),
        //         const Expanded(
        //           flex: 1,
        //           child: Column(),
        //         ),
        //       ]
        //   ),
        // ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("Add Collar Button Pressed");
          },
          backgroundColor: Colors.deepPurple,
          icon: const Icon(Icons.add, color: Colors.white,),
          label: const Text("Add Collar", style: TextStyle(color: Colors.white)),
          elevation: 3,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}