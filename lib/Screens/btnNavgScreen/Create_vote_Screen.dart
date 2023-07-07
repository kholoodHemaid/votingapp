import 'package:flutter/material.dart';
import 'package:votingapp/Screens/constant.dart';
class create_vote_screen extends StatefulWidget {
  const create_vote_screen({Key? key}) : super(key: key);

  @override
  State<create_vote_screen> createState() => _create_vote_screenState();
}

class _create_vote_screenState extends State<create_vote_screen> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create a Poll:',
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),

              Container(
                decoration: BoxDecoration(
               //   borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(

                      borderSide: BorderSide(style: BorderStyle.solid,width:.4),
                      //borderRadius: BorderRadius.circular(3),


                    ),


                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid,color: kTextLightColor),
                   //  borderRadius: BorderRadius.circular(3),
                    ),
                //    labelText: 'Field 1',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.01,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                decoration: BoxDecoration(
                //  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(

                      borderSide: BorderSide(style: BorderStyle.solid,width:.4),
                  //    borderRadius: BorderRadius.circular(3),


                    ),


                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid,color: kTextLightColor),
                 //     borderRadius: BorderRadius.circular(3),
                    ),


                 //   labelText: 'Field 2',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.01,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),


              SizedBox(height: screenHeight * 0.04),
              Text(
                'Options:',
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Wrap(
                children: [
                  Checkbox(
                    value: isChecked1,
                    onChanged: (value) {
                      setState(() {
                        isChecked1 = value!;
                      });
                    },
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    'Public',
                    style: TextStyle(fontSize: screenWidth * 0.04),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  Checkbox(
                    value: isChecked2,
                    onChanged: (value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    },
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    'Private',
                    style: TextStyle(fontSize: screenWidth * 0.04),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              ElevatedButton(
                onPressed: () {
                  // Perform action when button is pressed
                },
                child: Text(
                  'Create Vote',
                  style: TextStyle(fontSize: screenWidth * 0.04),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
