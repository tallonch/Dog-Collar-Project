import 'package:flutter/material.dart';

class Collar_Management extends StatelessWidget{
  const Collar_Management({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
        body: Center(
          child: Row(
              children: <Widget>[
                const Expanded(
                  flex: 1,
                  child: Column(),
                ),
                Expanded(
                    flex: 8,
                    child:
                      Column(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              print("Edit Collar Button Pressed");
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 30,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              minimumSize: Size(double.infinity, 50),
                            ),
                            label: Text("Edit Collar"),
                          ),
                        ],
                      ),
                ),
                const Expanded(
                  flex: 1,
                  child: Column(),
                ),
              ]
          ),
        ),
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