import 'package:flutter/material.dart';
import 'package:flutter_settings_screen_ex/flutter_settings_screen_ex.dart';
import 'package:gps_dog_collar_flutter/screens/settings/login.dart';
import 'screens/map.dart';
import 'screens/profile.dart';
import 'screens/collar_management.dart';

Future main() async {
  await Settings.init(cacheProvider:  SharePreferenceCache());

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;
  final screens = [
    Center(child: Profile()),
    const Center(child: CollarMap()),
    Center(child: Collar_Management()),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.blueGrey[950],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Spot On', style: TextStyle(color: Colors.white),),
          elevation: 2,
          backgroundColor: Colors.deepPurple,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.amberAccent[400],
          unselectedItemColor: Colors.blueGrey[950],
          items: const [
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.account_circle),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Collars',
              icon: Icon(Icons.account_tree_outlined),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}



