import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Change Password'),
              onTap: () {
                openDialog(context);
              } ,
              splashColor: Colors.amberAccent[400],
              textColor: Colors.deepPurple,
              iconColor: Colors.deepPurple,
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Change Email'),
              onTap: () {
                openDialog(context);
              } ,
              splashColor: Colors.amberAccent[400],
              textColor: Colors.deepPurple,
              iconColor: Colors.deepPurple,
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Change Image'),
              onTap: () {
                openDialog(context);
              } ,
              splashColor: Colors.amberAccent[400],
              textColor: Colors.deepPurple,
              iconColor: Colors.deepPurple,
            ),
          ],
        )
    );
  }


  Future openDialog(BuildContext context) => showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Feature in Development', style: TextStyle(color: Colors.amber),),
      content: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
        ),
        style: TextStyle(color: Colors.amber),

      ),
      backgroundColor: Colors.deepPurple,
      contentTextStyle: const TextStyle(color: Colors.white),

      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    ),
  );

}
