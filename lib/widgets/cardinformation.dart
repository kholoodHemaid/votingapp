import 'package:flutter/material.dart';
import 'package:votingapp/Screens/StatisticsScreen.dart';
import 'package:votingapp/Screens/VoteScreen.dart';
import 'package:votingapp/widgets/divider.dart';
class cardinformation extends StatelessWidget {
  final int index;
   cardinformation({
     required this.index
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Icon(
                Icons.how_to_vote_outlined,
                size: 20.0,
              ),
            ),
            SizedBox(width: 15.0),
            Text(
              'What is your best Player ?',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 10,),

            Row(

              children: [
                Text('66'),
                SizedBox(width: 10,),
                Icon(Icons.people),
              ],
            ),
            SizedBox(width: 10.0),
            ElevatedButton(
              onPressed: () {
                // تنفيذ الإجراء المطلوب عند النقر على زر "Go Vote"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VoteScreen(),
                  ),
                );
              },
              child: Text('Go Vote'),
            ),
            SizedBox(width: 10.0),
            ElevatedButton(
              onPressed: () {
                // تنفيذ الإجراء المطلوب عند النقر على زر "View Statistics"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StatisticsScreen(),
                  ),
                );
              },
              child: Text('View Statistics'),
            ),
          ],
        ),
        SizedBox(height: 10,),
        IndexedDivider(
          itemCount: 7,
          index: index,
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}