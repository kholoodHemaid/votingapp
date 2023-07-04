import 'package:flutter/material.dart';
import 'package:votingapp/Model.dart';
import 'package:votingapp/Screens/btnNavgScreen/Create_vote_Screen.dart';
import 'package:votingapp/Screens/btnNavgScreen/Home_Screen.dart';
import 'package:votingapp/Screens/btnNavgScreen/Profile_Screen.dart';
import 'package:votingapp/Screens/btnNavgScreen/Verified_Screen.dart';
import 'package:votingapp/Screens/constant.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}
TabController ? tabController ;
List<BottonNavModel> bottomnav = <BottonNavModel>[
  BottonNavModel(
    home_Screen(),
  ),
  BottonNavModel(
      create_vote_screen()
  ),
  BottonNavModel(
    verified_screen(),
  ),
  BottonNavModel(
    profile_screen(),
  ),
];

class _MainScreenPageState extends State<MainScreenPage> {
  int currentIndex = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(

        showSelectedLabels: true,

        backgroundColor: kTextLightColor,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.amber),
        selectedLabelStyle: TextStyle(fontSize: 15),


        unselectedLabelStyle: TextStyle(fontSize: 15),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,


        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });

        },



        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home_outlined),
              activeIcon:Icon(Icons.home) ,
              label: 'Home',
              backgroundColor: kTextLightColor),
          BottomNavigationBarItem(
              icon:Icon(Icons.add_outlined),
              activeIcon:Icon(Icons.add) ,
              label: 'Create' ,
              backgroundColor: kTextLightColor
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.check_outlined),
              activeIcon:Icon(Icons.check) ,
               label: 'Verified',
              backgroundColor: kTextLightColor
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person_outlined),
              activeIcon:Icon(Icons.person) ,
              label: 'Porifile',
              backgroundColor: kTextLightColor
          ),

        ],

      ),
      body: bottomnav.elementAt(currentIndex).screen,
    );
  }
}
