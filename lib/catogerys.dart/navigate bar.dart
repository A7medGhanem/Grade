import 'package:cars/catogerys.dart/SEARCH.dart';
import 'package:flutter/material.dart';

import '../MainScreen.dart';
import '../Screen.dart/MoreOptions.dart';
import '../Screen.dart/Search Screen.dart';



class OnBar extends StatefulWidget {
  OnBar({super.key});

  @override
  State<OnBar> createState() => _OnBarState();
}

class _OnBarState extends State<OnBar> {
  List <Widget> pages = [
 MoreOption(), SearchScreen(), MainScreen(),
  ];
  int selectedindex=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,

        selectedLabelStyle: const TextStyle(fontFamily: 'ibmR',),
        unselectedLabelStyle: const TextStyle(fontFamily: 'ibmR',),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedindex,




        onTap: (index) {
         setState(() {
           selectedindex=index;
         });
        },
        items:  [

        BottomNavigationBarItem(icon:Image(image: AssetImage('Images/application.png'),height:25,) ,
            label: 'الــمــزيد',activeIcon: Image(image: AssetImage('Images/application (1).png'),height: 25,) ),
          BottomNavigationBarItem(icon:Image(image: AssetImage('Images/search.png'),height:20,) ,
              label: 'ابحث',activeIcon: Image(image: AssetImage('Images/close.png'),height: 15,) ),

        BottomNavigationBarItem(icon:Image(image: AssetImage('Images/home.png',),height: 25) ,
            label: 'الرئيسية',activeIcon: Image(image: AssetImage('Images/home (1).png'),height: 25,)),

      ],),
      body: IndexedStack(
        index: selectedindex,
        children: pages,
      ),

    );
  }
}
