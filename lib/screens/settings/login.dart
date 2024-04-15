import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});



  @override
  Widget build(BuildContext context) {
  final String mailKey = 'honeal1@atu.edu';
  final String passKey = 'abc123';

  String mailAttempt = '';
  String passAttempt = '';

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome to Spot On!',
            style: TextStyle(
              fontSize: 35,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 25),
            child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String mail) {
                          mailAttempt = mail;
                      },
                      validator: (mail){
                        return mail!.isEmpty ? 'Please enter valid Email' : null;
                      },
                    ),

                    SizedBox(height: 30,),

                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Pass',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String pass) {
                          passAttempt = pass;
                      },
                      validator: (pass){
                        return pass!.isEmpty ? 'Please enter password' : null;
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {
                            if(
                              mailAttempt == mailKey && passAttempt == passKey
                            ){
                              Navigator.pop(context);
                            }else{
                              openDialog(context);
                            }
                        },
                        child: Text('Login'),
                        color: Colors.amberAccent[400],
                        textColor: Colors.deepPurple,
                      ),
                    )
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }

  Future openDialog(BuildContext context) => showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Incorrect Email or Password', style: TextStyle(color: Colors.amber),),

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
