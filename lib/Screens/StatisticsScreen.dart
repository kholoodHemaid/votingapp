import 'package:flutter/material.dart';
class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  final double percentage =20;
  int selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics Vote'),
      ),
      body: Center(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioListTile<int>(
                    title: Text('Messi'),
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Column(
                    children: [
                      LinearProgressIndicator(
                        value: 0.5, // تعديل القيمة هنا للنسبة المئوية المرغوبة لـ Option 1
                        minHeight: 10.0,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                      SizedBox(height: 16.0),
                      Text('50%'), // تعديل النسبة المئوية هنا لـ Option 1
                    ],
                  ),
                  RadioListTile<int>(
                    title: Text('Ronaldio'),
                    value: 2,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Column(
                    children: [
                      LinearProgressIndicator(
                        value: 0.3, // تعديل القيمة هنا للنسبة المئوية المرغوبة لـ Option 1
                        minHeight: 10.0,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                      SizedBox(height: 16.0),
                      Text('30%'), // تعديل النسبة المئوية هنا لـ Option 1
                    ],
                  ),
                  RadioListTile<int>(
                    title: Text('Haland'),
                    value: 3,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        LinearProgressIndicator(
                          value: 0.2, // تعديل القيمة هنا للنسبة المئوية المرغوبة لـ Option 1
                          minHeight: 10.0,
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                        SizedBox(height: 16.0),
                        Text('20%'), // تعديل النسبة المئوية هنا لـ Option 1
                      ],
                    ),
                  ),
                  RadioListTile<int>(
                    title: Text('Mpabi'),
                    value: 3,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        LinearProgressIndicator(
                          value: 0.3, // تعديل القيمة هنا للنسبة المئوية المرغوبة لـ Option 1
                          minHeight: 10.0,
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                        SizedBox(height: 16.0),
                        Text('30%'), // تعديل النسبة المئوية هنا لـ Option 1
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),

          ],
        ),
      ),
    );
  }
}
