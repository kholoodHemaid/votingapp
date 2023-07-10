import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class VoteScreen extends StatefulWidget {
  @override
  State<VoteScreen> createState() => _VoteScreenState();
}

class _VoteScreenState extends State<VoteScreen> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UVote'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'What is your best Player ?',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          RadioListTile<int>(
            value: 1,
            groupValue: selectedOption,
            onChanged: (int? value) {
              setState(() {
                selectedOption = value!;
              });
            },
            title: const Text('Messi'),

          ),
          RadioListTile<int>(
            value: 2,
            groupValue: selectedOption,
            onChanged: (int? value) {
              setState(() {
                selectedOption = value!;
              });
            },
            title: const Text('Ronaldio'),

          ),
          RadioListTile<int>(
            value: 3,
            groupValue: selectedOption,
            onChanged: (int? value) {
              setState(() {
                selectedOption = value!;
              });
            },
            title: const Text('Haland'),

          ),
          RadioListTile<int>(
            value: 3,
            groupValue: selectedOption,
            onChanged: (int? value) {
              setState(() {
                selectedOption = value!;
              });
            },
            title: const Text('Mpabi'),

          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 70,
                  height: 80,
                  child: CircleAvatar(
                    child: Text('Vote',style: TextStyle(fontSize: 16),)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

