import 'package:flutter/material.dart';
import 'package:votingapp/Screens/MainScreen.dart';
import 'package:votingapp/Screens/auth/SignUpPage.dart';
import 'package:votingapp/Screens/auth/loginpage.dart';
import 'package:votingapp/Screens/btnNavgScreen/Create_vote_Screen.dart';
import 'package:votingapp/Screens/btnNavgScreen/Home_Screen.dart';
import 'package:votingapp/Screens/btnNavgScreen/Profile_Screen.dart';
import 'package:votingapp/Screens/btnNavgScreen/Verified_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
       initialRoute: '/Login_page',
     routes: {

       '/Login_page': (context) => Login_Page(),
       '/sing_page': (context) => SignUpPage(),
       '/main_Screen': (context) => MainScreenPage(),
       '/home_Screen': (context) => home_Screen(),
       '/create_vote_screen': (context) => create_vote_screen(),
    //   '/verified_screen': (context) => verified_screen(),
       '/profile_screen': (context) => profile_screen(firstName:'Ahmed' ,lastName: 'Hemaid',email: 'AhmedHemaid@gmail.com'),



     },

    );
  }
}

