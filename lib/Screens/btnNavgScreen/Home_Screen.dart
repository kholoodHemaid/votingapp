import 'package:flutter/material.dart';
import 'package:votingapp/Screens/StatisticsScreen.dart';
import 'package:votingapp/Screens/VoteScreen.dart';
import 'package:votingapp/Screens/constant.dart';
import 'package:votingapp/widgets/cardinformation.dart';
import 'package:votingapp/widgets/divider.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  List<String> questions = [
    'What is your favorite color?',
    'Who is your favorite actor?',
    'What is your preferred programming language?',
    'What is your favorite book?',
    'Which is your favorite movie genre?',
    'What is your favorite food?',
    'What is your dream travel destination?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UVOTE'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemCount: questions.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Flexible(
                  child: cardinformation(
                    index: index,
                    question: 'What is your best Player ?',
                  ),
                ),
                Flexible(
                  child: cardinformation(
                    index: index,
                    question: 'What is your program languge do you prefer ?',
                  ),
                ),
                Flexible(
                  child: cardinformation(
                    index: index,
                    question: 'What is your favorite color ?',
                  ),
                ),
                Flexible(
                  child: cardinformation(
                    index: index,
                    question: 'Who is your favorite actor?',
                  ),
                ),
                Flexible(
                  child: cardinformation(
                    index: index,
                    question: 'What is your favorite book?',
                  ),
                ),
                Flexible(
                  child: cardinformation(
                    index: index,
                    question: 'What is your favorite food?',
                  ),
                ),
                Flexible(
                  child: cardinformation(
                    index: index,
                    question: 'Which is your favorite movie genre?',
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
