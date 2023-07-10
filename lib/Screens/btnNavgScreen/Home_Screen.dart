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
  final List<String> items = List.generate(12, (index) => 'عنصر $index');


  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('UVOTE'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 15),
        child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return cardinformation(index: index);
          },
        ),
      )
      ,
    );
  }

}



