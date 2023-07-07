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
    //  backgroundColor:Colors.red ,
      body: SafeArea(
        child: Padding(
         padding: EdgeInsets.all(screenWidth * 0.05),
          child:
          Stack(

            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  child: Text(
                    'Explore Votes',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top:60.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
                      crossAxisSpacing: 40,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildGridItem(items[index]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),

        ),

    );
  }
  Widget buildGridItem(String text) {
    return Container(
      //padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            'images/image.png',
            width: double.infinity,
            height: 45,
          ),
          SizedBox(height: 8.0),
          Center(child: Text(text)),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                child: Text('Go Vote'),
                onPressed: () {
                  // إجراء يتم تنفيذه عند النقر على الزر
                },
              ),

              Row(

                children: [
                  Text('66'),
                  SizedBox(width: 10,),
                  Icon(Icons.people),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

