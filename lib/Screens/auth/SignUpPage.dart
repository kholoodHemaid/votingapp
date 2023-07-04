import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Scaffold(

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Create Your Account ... ',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              ElevatedButton(
                onPressed: () {
                  // Sign Up action
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
