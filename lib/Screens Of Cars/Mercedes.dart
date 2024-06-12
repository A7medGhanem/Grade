import 'package:cars/Models%20of%20Mercedes/Mercedes-Benz%20AMG%20GT.dart';
import 'package:cars/Models%20of%20Mercedes/Mercedes-Benz%20E-Class.dart';
import 'package:cars/Models%20of%20Mercedes/Mercedes-Benz%20GLC.dart';
import 'package:cars/Models%20of%20Mercedes/Mercedes-Benz%20GLS.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models Of Kia/FORTE.dart';
import '../Models Of Kia/Kia2017.dart';
import '../Models Of Kia/NIRO.dart';
import '../Models Of Kia/RIO.dart';
import '../models/GesterModelCar.dart';

class Mercedes extends StatefulWidget {
  const Mercedes({super.key});

  @override
  State<Mercedes> createState() => _MercedesState();
}

class _MercedesState extends State<Mercedes> {
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
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar:  AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 80,
                child: Text('انواع السيارات',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          body:isConnected?ListView(
            children: [
              GestureDetector(
                onTap:(){
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
                        return const Mercedes_Benz();
                      }));
                } ,
                child: GestCarModel(txt2: 'سيارة مرسيدس بنز AMG GT هي سيارة رياضية فائقة الأداء والفخامة تمثل الجمال والقوة في تصميمها وأدائها. تم تطوير AMG GT من قبل فرع AMG التابع لمرسيدس بنز، المتخصص في تعزيز الأداء وتطوير السيارات الرياضية.تتميز AMG GT بتصميم خارجي مذهل يجمع بين الأناقة والديناميكية، مع خطوط متدفقة وشبك أمامي واسع يمنحها مظهرًا قويًا ورياضيًا. تتوفر السيارة بعدة إصدارات من بينها كوبيه، وروبرتس، وسيارة قابلة للتحويل.',
                  txt1: 'مرسيدس بينز اي ام جي 2023',
                  img1: 'https://www.cars.com/i/xlarge/in/v2/stock_photos/6b6278f5-c07d-4c78-b869-047890291410/91175bf6-34bd-425a-b7f5-b6db57e38088.png',),
              ),


              GestureDetector(
                onTap:(){
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
                        return Mercedes_EClass();
                      }));
                } ,
                child: GestCarModel(txt2: 'سيارة مرسيدس بنز E-Class هي سيارة سيدان فاخرة تنتجها شركة مرسيدس بنز الألمانية، وتُعتبر واحدة من السيارات الأيقونية في فئتها. تمثل E-Class توازنًا مثاليًا بين الأداء والفخامة والتكنولوجيا المتطورة. ',
                  txt1: ' مرسيدس بينز كلاس',
                  img1: 'https://media.ed.edmunds-media.com/mercedes-benz/e-class/2024/oem/2024_mercedes-benz_e-class_sedan_e-450-4matic_f_oem_2_815x543.jpg',),
              ),
              GestureDetector(
                onTap:(){
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
                        return Mercedes_BenzGlc();
                      }));
                } ,
                child: GestCarModel(txt2: 'مرسيدس بنز GLC هي سيارة SUV متوسطة الحجم تُعتبر واحدة من الطرازات الأكثر شعبية في تشكيلة مرسيدس بنز. تمثل GLC توازنًا مثاليًا بين الأداء والراحة والفخامة، وهي مصممة لتلبية احتياجات العائلات والأفراد الذين يبحثون عن سيارة متعددة الاستخدامات وعملية في الاستخدام اليومي.',
                  txt1: 'مرسيدس بينز جي ال سي 2023',
                  img1: 'https://media.ed.edmunds-media.com/mercedes-benz/glc-class/2023/oem/2023_mercedes-benz_glc-class_4dr-suv_glc-300_f_oem_1_815x543.jpg',),
              ),
              GestureDetector(
                onTap:(){
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
                        return const Mercedes_GLS();
                      }));
                } ,
                child: GestCarModel(txt2: 'مرسيدس بنز GLS هي سيارة SUV فاخرة كبيرة الحجم وتُعتبر الطراز الرائد في فئة السيارات العائلية الفاخرة التي تنتجها مرسيدس بنز. تمثل GLS الجمع بين الرفاهية والأداء والتكنولوجيا لتوفير تجربة قيادة فاخرة ومريحة للسائق والركاب على حد سواء.',
                  txt1: 'مرسيدس جي ال اس 2023',
                  img1: 'https://media.ed.edmunds-media.com/mercedes-benz/gls-class/2021/oem/2021_mercedes-benz_gls-class_4dr-suv_gls-450-4matic_fq_oem_2_815x543.jpg',),
              ),
            ],
          ):
          Center(
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
