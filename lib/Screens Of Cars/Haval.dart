import 'package:cars/Models%20of%20Haval/Haval%20F7.dart';
import 'package:cars/Models%20of%20Haval/Haval%20H2.dart';
import 'package:cars/Models%20of%20Haval/Haval%20H4.dart';
import 'package:cars/Models%20of%20Haval/Haval%20H9.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models of SSYOUNG/SsangYong Rodius.dart';
import '../Models of Volvo/Volvo S60.dart';
import '../Models of Volvo/Volvo S80.dart';
import '../Models of Volvo/Volvo XC70.dart';
import '../models/GesterModelCar.dart';

class Haval extends StatefulWidget {
  const Haval({super.key});

  @override
  State<Haval> createState() => _HavalState();
}

class _HavalState extends State<Haval> {
  bool isConnected = false;
  bool isDelayedActionExecuted = false;
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    Connectivity().checkConnectivity().then((result) {
      setState(() {
        isConnected = result != ConnectivityResult.none;
      });
    });

    // Listen to connectivity changes
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none && isConnected) {
        // Internet was connected and now it's disconnected
        Future.delayed(Duration(seconds: 10), () {
          if (mounted && !isDelayedActionExecuted) {
            setState(() {
              isConnected = false; // Update UI if needed
              isDelayedActionExecuted = true; // Prevent repeated execution
              // Add your code here to execute after 15 seconds of disconnection
              debugPrint('Delayed action executed after internet disconnection.');
            });
          }
        });
      } else {
        // Internet is connected
        setState(() {
          isConnected = true; // Update UI if needed
          isDelayedActionExecuted = false; // Reset delayed action flag
        });
      }
    });
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.deepOrangeAccent,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 80,
                child: Text('انواع السيارات',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          body:isConnected? Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [

                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500) ,
                        reverseTransitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (context,animation,secondaryAnimation,child)
                        {
                          final slideAnimation= Tween(begin: const Offset(2,0),end: const Offset(0,0)).animate(animation);
                          return SlideTransition(position: slideAnimation,child: child,);
                        },
                        pageBuilder: (context,animation,secondaryAnimation)
                        {
                          return const Haval_H9();
                        }));
                  },
                  child: GestCarModel(img1: 'https://arabgt.com/wp-content/uploads/2023/03/%D8%B3%D9%8A%D8%A7%D8%B1%D8%A9-%D8%B5%D9%8A%D9%86%D9%8A%D8%A9-%D9%87%D8%A7%D9%81%D8%A7%D9%84-H9-2023-1.jpg',
                      txt1: 'هافال اتش 9 2023',
                      txt2: 'سيارة هافال H9 هي سيارة SUV كبيرة الحجم من إنتاج شركة هافال، وهي جزء من سلسلة سيارات الدفع الرباعي التي تقدمها الشركة. تم إطلاق سيارة Haval H9 لأول مرة في عام 2015، وهي تهدف إلى تلبية احتياجات السائقين الذين يبحثون عن سيارة قادرة على التحمل والأداء الجيد على مختلف أنواع الطرق.'),
                ),//2017

                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500) ,
                        reverseTransitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (context,animation,secondaryAnimation,child)
                        {
                          final slideAnimation= Tween(begin: const Offset(2,0),end: const Offset(0,0)).animate(animation);
                          return SlideTransition(position: slideAnimation,child: child,);
                        },
                        pageBuilder: (context,animation,secondaryAnimation)
                        {
                          return const Haval_F7();
                        }));
                  },
                  child: GestCarModel(img1: 'https://favorit-motors.ru/upload/resize_cache/fm2/0f8cb8a57f448553a7e09f8d275f0c23_934_0.webp',
                      txt1: 'هافال اتش 7 2023',txt2: 'سيارة هافال F7 هي سيارة رياضية متعددة الاستخدامات (SUV) من إنتاج شركة هافال التابعة لشركة Great Wall Motors الصينية. تم إطلاق سيارة Haval F7 لأول مرة في عام 2018، وهي جزء من تشكيلة السيارات الراقية التي تقدمها الشركة.'),
                ),//2016
                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500) ,
                        reverseTransitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (context,animation,secondaryAnimation,child)
                        {
                          final slideAnimation= Tween(begin: const Offset(2,0),end: const Offset(0,0)).animate(animation);
                          return SlideTransition(position: slideAnimation,child: child,);
                        },
                        pageBuilder: (context,animation,secondaryAnimation)
                        {
                          return const  Haval_H4();
                        }));
                  },
                  child: GestCarModel(img1: 'https://topcar.sa/storage/Images/Cars/webstdy_1701250297IMG_0253.jpg',
                      txt1: 'هافال اتش 4 2023',
                      txt2: 'سيارة هافال H4 هي سيارة SUV مدمجة من إنتاج شركة هافال، وهي جزء من مجموعة سيارات الدفع الرباعي التي تقدمها الشركة. تم إطلاق سيارة Haval H4 لأول مرة في عام 2017، وتتميز بتصميمها العصري والمميز ومجموعة متنوعة من الميزات التقنية.'),
                ),//2017

                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500) ,
                        reverseTransitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (context,animation,secondaryAnimation,child)
                        {
                          final slideAnimation= Tween(begin: const Offset(2,0),end: const Offset(0,0)).animate(animation);
                          return SlideTransition(position: slideAnimation,child: child,);
                        },
                        pageBuilder: (context,animation,secondaryAnimation)
                        {
                          return const Haval_H2();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/9469/pictures/11048738/webp_listing_main_01.webp',
                      txt1: 'هافال اتش 2 2023',txt2: 'سيارة هافال H2 هي سيارة دفع رباعي صغيرة الحجم من إنتاج شركة هافال، وهي شركة تابعة لشركة Great Wall Motors الصينية. تم إطلاق سيارة Haval H2 لأول مرة في عام 2014، وهي تعتبر واحدة من طرازات السيارات الرياضية متعددة الاستخدام التي تقدمها الشركة.'),
                ),//2016

              ],
            ),
          ):  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 250),
                Text(
                  'لا يوجد اتصال بالإنترنت',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'IBMB',
                    color: Colors.black,
                  ),
                ),

                Column(
                  children: [
                    SizedBox(height: 300,),
                    Text(
                      'يرجى التأكد من اتصالك بالإنترنت',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'IBMR',
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'ومن ثم حاول مرة أخرى',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'IBMR',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
