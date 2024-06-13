import 'package:cars/Models%20of%20Foton/Foton%20Gratour.dart';
import 'package:cars/Models%20of%20Foton/Foton%20Sauvana%20SUV.dart';
import 'package:cars/Models%20of%20Foton/Foton%20View%20CS2.dart';
import 'package:cars/Models%20of%20Foton/Foton%20View%20Traveller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models of jac groub/JAC J4.dart';
import '../Models of jac groub/JAC Refine A60.dart';
import '../Models of jac groub/JAC S2.dart';
import '../Models of jac groub/JAC S3.dart';
import '../models/GesterModelCar.dart';

class Foton extends StatefulWidget {
  const Foton({super.key});

  @override
  State<Foton> createState() => _FotonState();
}

class _FotonState extends State<Foton> {
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
                          return const Foton_Gratour();
                        }));
                  },
                  child: GestCarModel(img1: 'https://d1hv7ee95zft1i.cloudfront.net/custom/car-model-photo/original/2019-foton-gratour-philippines-5d2eb9037e826.webp',
                      txt1: 'فوتون جراتور 2023',
                      txt2: 'سيارة فوترون جراتور (Foton Gratour) هي سيارة تجارية صغيرة تُنتجها شركة فوتون (Foton Motor)، وهي شركة صينية متخصصة في تصنيع المركبات التجارية. تصنف سيارة فوترون جراتور ضمن فئة الشاحنات الخفيفة والسيارات متعددة الاستخدامات (MPV).'),
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
                          return const  Foton_Sauvana();
                        }));
                  },
                  child: GestCarModel(img1: 'https://images.autoboom.co.il/9OXilrEfostpTx_dm9iN-TlglE9AkykPCWhmjT5WH8I/fit/1800/1800/sm/0/Z3M6Ly9hdXRvYm9vbS1pbWFnZXMvMDAwLzAwMC8xODQvMTg0MDkzLmpwZw.webp',
                      txt1: 'فوتون ساوفانا2023',txt2: 'فوتون ساوفانا (Foton Sauvana) هي سيارة رياضية متعددة الاستخدامات (SUV) تنتجها شركة فوتون موتور الصينية. تعتبر هذه السيارة جزءًا من مجموعة السيارات الرياضية متعددة الاستخدامات التي تقدمها فوتون، وتتميز بمواصفات تلبي احتياجات العائلات والمغامرين على حد سواء.'),
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
                          return const  Foton_View();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/8709/pictures/9013465/webp_listing_main_2015_Foton_CS2_Front.webp',
                      txt1: 'فوتو فيو  2023',
                      txt2: 'سيارة فوتون فيو CS2 (Foton View CS2) هي سيارة تجارية متعددة الاستخدامات تنتجها شركة فوتون موتور الصينية. تعد هذه السيارة جزءًا من خط إنتاج السيارات التجارية لفوتون، وتستخدم بشكل واسع في النقل العام والنقل التجاري '),
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
                          return const Foton_View_Traveller();
                        }));
                  },
                  child: GestCarModel(img1: 'https://imgcdn.zigwheels.ph/large/gallery/exterior/8/2744/foton-traveller-xl-front-angle-low-view-666560.jpg',
                      txt1: 'فوتو فيو ترافيلر 2023',txt2: 'سيارة فوتون فيو ترافلر (Foton View Traveller) هي سيارة متعددة الاستخدامات تنتجها شركة فوتون موتور الصينية. تصنف هذه السيارة ضمن فئة الفان الكبيرة، وتستخدم بشكل واسع في النقل التجاري والعائلي، بالإضافة إلى النقل الجماعي في الشركات والمدارس.'),
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
