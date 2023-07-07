import 'package:flutter/material.dart';
class home_Screen extends StatefulWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  final List<String> items = List.generate(12, (index) => 'عنصر $index');


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
         padding: EdgeInsets.all(screenWidth * 0.05),
          child:
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
              childAspectRatio: 1.0,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return buildGridItem(items[index]);
            },
          ),
        ),

        ),

    );
  }
  Widget buildGridItem(String text) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            'images/image.png',
            width: 100,
            height: 100,
          ),
          SizedBox(height: 8.0),
          Text(text),
          SizedBox(height: 8.0),
          ElevatedButton(
            child: Text('زر'),
            onPressed: () {
              // إجراء يتم تنفيذه عند النقر على الزر
            },
          ),
          SizedBox(height: 8.0),
          Icon(Icons.star),
        ],
      ),
    );
  }
}

