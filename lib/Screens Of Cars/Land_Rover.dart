import 'package:cars/Models%20of%20Range%20Rover/Range%20Rover%20Defender%2090.dart';
import 'package:cars/Models%20of%20Range%20Rover/Range%20Rover%20Discovery.dart';
import 'package:cars/Models%20of%20Range%20Rover/Range%20Rover%20Sport.dart';
import 'package:cars/Models%20of%20Range%20Rover/Range%20Rover.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models of Foton/Foton Gratour.dart';
import '../Models of Foton/Foton Sauvana SUV.dart';
import '../Models of Foton/Foton View CS2.dart';
import '../Models of Foton/Foton View Traveller.dart';
import '../models/GesterModelCar.dart';

class LandRover extends StatefulWidget {
  const LandRover({super.key});

  @override
  State<LandRover> createState() => _LandRoverState();
}

class _LandRoverState extends State<LandRover> {
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
                          return const Range_Rover();
                        }));
                  },
                  child: GestCarModel(img1: 'https://images.clickdealer.co.uk/vehicles/5167/5167838/large1/122808691.jpg',
                      txt1: ' رانج روڤر 2023',
                      txt2: 'سيارة Range Rover هي سيارة دفع رباعي فاخرة تنتجها شركة لاند روفر، وهي جزء من مجموعة السيارات الراقية التي تتميز بأدائها القوي وراحة قيادتها الفائقة.'),
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
                          return const Range_Rover_Defender();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/8356/pictures/9006317/webp_listing_main_01.webp',
                      txt1: 'رانج روڤر ديفيندر 90 2023',txt2: 'سيارة Range Rover Defender 90 هي إحدى طرز سيارات الدفع الرباعي الأسطورية التي تنتجها شركة لاند روفر (Land Rover) البريطانية. تمثل Defender 90 الجيل الأحدث من سيارة Defender، والتي تم إعادة تصميمها لتلبية معايير الأداء الحديثة والراحة في القيادة، مع الحفاظ على السمات الأسطورية التي جعلت Defender شهيرة عالميًا.'),
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
                          return const Range_Rover_Discovery();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/10063/pictures/11057712/webp_listing_main_15076_st1280_159.webp',
                      txt1: 'رانج روڤر ديسكاڤري 2023',
                      txt2: 'رانج روڤر ديسكفري (Range Rover Discovery) هي سيارة SUV فاخرة تنتجها شركة لاند روڤر، التابعة لمجموعة جاگوار لاند روڤر. تعتبر ديسكڤري واحدة من الطرازات الرائدة في فئة الـSUVs الفاخرة، وتمتاز بجمعها بين الأداء القوي والفخامة والقدرة على المغامرات البرية.'),
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
                          return const Range_Rover_Sport();
                        }));
                  },
                  child: GestCarModel(img1: 'https://hips.hearstapps.com/hmg-prod/images/2023-land-rover-range-rover-sport-se-p360-19-63fe16f5eecca.jpg?crop=0.684xw:0.576xh;0.234xw,0.321xh&resize=1200:*',
                      txt1: 'رانج روڤر اسبورت 2023',txt2: 'تتميز Range Rover Sport بتصميم فاخر ورياضي في آن واحد، مع خطوط ديناميكية وجريئة تعكس طابع الفخامة والأناقة. تتميز بشبكة أمامية واسعة ومصابيح LED أمامية حادة ومميزة.'),
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
