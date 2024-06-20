// ignore: file_names
import 'package:cars/Screen.dart/AboutApp.dart';
import 'package:cars/Screen.dart/Notification.dart';

import 'package:cars/catogerys.dart/About%20Developer.dart';
import 'package:cars/catogerys.dart/Contact%20us.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../catogerys.dart/option more.dart';

class MoreOption extends StatelessWidget {
  const MoreOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (const Color(0xfff7f9fd)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'الـمزيد',
                      style: TextStyle(fontSize: 18, fontFamily: 'ibmB'),
                    )
                  ],
                ), //المزيد
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Notifiy(),
                      )),
                  child: const SectionMore(
                    CTxt1: Colors.black,
                    CTxt2: Colors.black,
                    Text1: '',
                    Text2: 'الاشعارات',
                    Img: 'Images/bell.png',
                    width: 10,
                    Max: 12,
                  ),
                ), //الاشعارات
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Fluttertoast.showToast(
                      msg: 'هذه الخاصية غير متوفرة الان', webShowClose: false),
                  child: const SectionMore(
                    CTxt1: Colors.orangeAccent,
                    CTxt2: Colors.grey,
                    Text1: 'قريباً',
                    Text2: 'لغة التطبيق',
                    Img: 'Images/arabic.png',
                    width: 20,
                    Max: 15,
                  ),
                ), //لغة التطبيق
                const SizedBox(
                  height: 20,
                ),

                GestureDetector(
                  onTap: () => Fluttertoast.showToast(
                    msg: 'هذه الخاصية غير متوفرة الان',
                  ),
                  child: const SectionMore(
                    CTxt1: Colors.orangeAccent,
                    CTxt2: Colors.grey,
                    Text1: 'قريباً',
                    Text2: 'الوضع الليلي',
                    Img: 'Images/dark-mode.png',
                    width: 10,
                    Max: 15,
                  ),
                ),
                //الوضع الليلي
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      context: context,
                      builder: (context) {
                        return Container(
                          color: Colors.white60,
                          child: const SizedBox(
                            height: 400,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'عن الـمطورين',
                                          style: TextStyle(
                                              fontFamily: 'ibmB',
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ), //عن المطورين
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Developer(
                                      Bottomtxt: 'Flutter-Dart Developer',
                                      Toptxt: 'Ahmed Adel Ghanem',
                                      Img: 'Images/ahmed.jpg',
                                      left: 100,
                                      fonsize: 18,
                                    ),//me
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Developer(
                                      Bottomtxt: 'Flutter Developer',
                                      Toptxt: 'Mahmoud Reda AbdelSattar',
                                      Img: 'Images/mahmoud.jpg',
                                      left: 90,
                                      fonsize: 14,
                                    ),
                                   //yousef
                                    SizedBox(
                                      height: 10,
                                    ),
                                     //mahmoud
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Developer(
                                      Bottomtxt: 'UI-UX ',
                                      Toptxt: 'Eslam Mohamed Gabr',
                                      Img: 'Images/eslam.jpg',
                                      fonsize: 16,
                                      left: 150,
                                    ), //islam
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Developer(
                                      Bottomtxt: 'Data Base Developer',
                                      Toptxt: 'Hady Aziz Hady',
                                      Img: 'Images/hady.jpg',
                                      fonsize: 16,
                                      left: 80,
                                    ), //hady

                                    SizedBox(
                                      height: 10,
                                    ),
                                    Developer(
                                      Bottomtxt: 'Data Base Developer',
                                      Toptxt: 'Ashraqat Abdullah Ahmed',
                                      Img: 'Images/ashraqat.jpg',
                                      fonsize: 16,
                                      left: 100,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Developer(
                                      Bottomtxt: 'Graphic Designer',
                                      Toptxt: 'Yousef Mahrous Elqaramousi',
                                      Img: 'Images/yousef.jpg',
                                      fonsize: 14,
                                      left: 100,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Developer(
                                      Bottomtxt: 'Graphic Designer',
                                      Toptxt: 'Dina Hamoda Wahdan',
                                      Img: 'Images/dina.jpg',
                                      fonsize: 16,
                                      left: 100,
                                    ), //dina


                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const SectionMore(
                    CTxt1: Colors.orangeAccent,
                    CTxt2: Colors.black,
                    Text1: '',
                    Text2: 'عن الـمطورين',
                    Img: 'Images/mobile-development.png',
                    width: 10,
                    Max: 12,
                  ),
                ), //عن المطورين
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                   onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutApp(),
              )),
                  child: const SectionMore(
                    CTxt1: Colors.orangeAccent,
                    CTxt2: Colors.black,
                    Text1: '',
                    Text2: 'عن التطبيق',
                    Img: 'Images/info.png',
                    width: 10,
                    Max: 12,
                  ),
                ), //عن التطبيق
                const SizedBox(
                  height: 20,
                ),
                const Connect(), //تواصل معنا
              ],
            ),
          ],
        ),
      ),
    );
  }
}
