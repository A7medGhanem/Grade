import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import '../Models Of Jeep/Jeep Cherokee.dart';
import '../Models Of Jeep/Jeep Compass.dart';
import '../Models Of Jeep/Jeep Gladiator.dart';
import '../Models Of Jeep/Jeep Wrangler.dart';
import '../models/GesterModelCar.dart';

class Jeep extends StatefulWidget {
  const Jeep({super.key});

  @override
  State<Jeep> createState() => _JeepState();
}

class _JeepState extends State<Jeep> {
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
          body:       isConnected
         ? ListView(
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
                        return const Jeep_Cherokee();
                      }));
                } ,
                child: GestCarModel(txt2: 'جيب شيروكي (Jeep Cherokee) هي سيارة SUV متوسطة الحجم تنتجها شركة جيب، وهي جزء من مجموعة شركات ستيلانتيس. تم إطلاق الجيل الأول من شيروكي في عام 1974، ومنذ ذلك الحين حققت السيارة شعبية كبيرة في فئتها.',
                  txt1: 'جيب شيروكي 2023',
                  img1: 'https://media.ed.edmunds-media.com/jeep/grand-cherokee/2022/oem/2022_jeep_grand-cherokee_4dr-suv_overland_fq_oem_1_815x543.jpg',),
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
                        return const Jeep_Gladiator();
                      }));
                } ,
                child: GestCarModel(txt2: 'جيب جلادياتور (Jeep Gladiator) هي شاحنة بيك آب متعددة الاستخدامات تنتجها شركة جيب، وهي جزء من مجموعة شركات ستيلانتيس. تم إطلاق الجلادياتور لأول مرة في عام 2020، وهي مبنية على نفس البنية الأساسية لسيارة جيب رانجلر، مما يمنحها القدرة على التحمل والأداء الرائعين في الطرق الوعرة.',
                  txt1: 'جيب جلادياتور 2023',
                  img1: 'https://media.ed.edmunds-media.com/jeep/gladiator/2021/oem/2021_jeep_gladiator_crew-cab-pickup_high-altitude_fq_oem_1_815x543.jpg',),
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
                        return Jeep_Compass();
                      }));
                } ,
                child: GestCarModel(txt2: 'جيب كومباس (Jeep Compass) هي سيارة SUV متوسطة الحجم تنتجها شركة جيب، وهي جزء من مجموعة شركات ستيلانتيس. تم إطلاق الجيل الأول من كومباس في عام 2006، ومنذ ذلك الحين حققت السيارة شعبية كبيرة في فئتها.',
                  txt1: 'جيب كومباس 2023',
                  img1: 'https://media.ed.edmunds-media.com/jeep/compass/2022/oem/2022_jeep_compass_4dr-suv_high-altitude_fq_oem_1_815x543.jpg',),
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
                        return const Jeep_Wrangler();
                      }));
                } ,
                child: GestCarModel(txt2: 'جيب رانجلر (Jeep Wrangler) هي سيارة رباعية الدفع ذات طراز فريد تنتجها شركة جيب، وهي جزء من مجموعة شركات ستيلانتيس، وهي واحدة من أقدم السيارات العسكرية المدنية التي تصنع للاستخدام العام. بدأ إنتاجها في عام 1986.',
                  txt1: 'جيب رانجلر 2023',
                  img1: 'https://media.ed.edmunds-media.com/jeep/wrangler/2023/oem/2023_jeep_wrangler_convertible-suv_sahara_fq_oem_2_815x543.jpg',),
              ),
            ],
          ):Center(
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
