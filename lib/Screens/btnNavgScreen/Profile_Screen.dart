import 'package:flutter/material.dart';
import 'package:votingapp/Screens/StatisticsScreen.dart';
import 'package:votingapp/Screens/VoteScreen.dart';
import 'package:votingapp/Screens/constant.dart';
import 'package:votingapp/widgets/divider.dart';
import 'dart:math';


class profile_screen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
   profile_screen(
       {required this.firstName,
       required this.lastName,
       required this.email,});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile Information',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24.0),
            ListTile(
              title: Text(
                'First Name:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                firstName,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            ListTile(
              title: Text(
                'Last Name:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                lastName,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            ListTile(
              title: Text(
                'Email:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                email,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Spacer(),

            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(width: 120.0,height:50,child: ElevatedButton(

                onPressed: () {
                  // اتخذ إجراء عند النقر على الزر لتسجيل الخروج
                },
                child: Text('Log Out'),
              ),),
            ),

          ],
        ),
      ),
    );
  }
}