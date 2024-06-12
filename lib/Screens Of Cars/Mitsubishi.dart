import 'package:cars/Mitsubishi/LANCER.dart';
import 'package:cars/Mitsubishi/OUTLANDER.dart';
import 'package:cars/Mitsubishi/PAJERO.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import '../Mitsubishi/Galant.dart';

import '../models/GesterModelCar.dart';


class Mitsubishi extends StatefulWidget {
  const Mitsubishi({super.key});

  @override
  State<Mitsubishi> createState() => _MitsubishiState();
}

class _MitsubishiState extends State<Mitsubishi> {
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
                          return const Galant();
                        }));
                  },
                  child: GestCarModel(img1: 'https://www.grcorollaforum.com/attachments/8c57fc2d-19b4-4f83-a0ef-a133fb17c6fd-jpeg.4123/',
                      txt1: 'ميتسوبيشي جالانت 2023',
                      txt2:"تتميز سيارة Mitsubishi Galant بتصميم ديناميكي وأداء متميز. تتوفر بمجموعة متنوعة من خيارات المحركات ونظم القيادة، بما في ذلك النسخ الرياضية والنسخ الاقتصادية. كما تتميز بداخلية واسعة ومريحة مع تقنيات حديثة للترفيه والسلامة."),
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
                          return const LANCER();
                        }));
                  },
                  child: GestCarModel(img1: 'https://platform.cstatic-images.com/in/v2/stock_photos/8cd8112e-0314-4ee4-a9dd-8708b899bbc5/b9b92539-4f50-4aa9-b40f-c68165e67d7e.png',
                      txt1: 'ميتسوبيشي لانسر 2017',txt2: 'هي سيارة سيدان متوسطة الحجم تم إنتاجها من قبل شركة ميتسوبيشي موتورز. تميزت Lancer بتاريخ طويل من الإنتاج والشهرة في العديد من الأسواق حول العالم.  تتميز Lancer 2017 بتصميم خارجي مميز يجمع بين الأناقة والديناميكية، مع لمسات رياضية تعكس شخصية السيارة. تتوفر بمجموعة متنوعة من الألوان والتجهيزات لتناسب احتياجات العملاء المختلفة.  '),
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
                          return const PAJERO();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/9792/pictures/11054535/webp_listing_main_01.webp',
                      txt1: 'ميتسوبيشي باجور 2023',
                      txt2: 'تتميز سيارة Mitsubishi Pajero بتصميمها القوي والفخم، إلى جانب مجموعة متنوعة من الخيارات فيما يتعلق بالمحركات وأنظمة الدفع الرباعي. تتوفر الباجيرو بمجموعة واسعة من التجهيزات والميزات التي تجعلها مناسبة للقيادة في الطرق الوعرة والظروف الصعبة. '),
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
                          return const OUTLANDER();
                        }));
                  },
                  child: GestCarModel(img1: 'https://hips.hearstapps.com/hmg-prod/images/2022-mitsubishi-outlander-327-edit-1617678035.jpg?crop=1xw:1xh;center,top&resize=980:*',
                      txt1: 'ميتسوبيشي اوت لاندر 2023',txt2: 'تتميز سيارة Mitsubishi Outlander بتصميمها العصري والديناميكي، بالإضافة إلى مساحتها الداخلية الواسعة وميزات الراحة والتقنيات الحديثة التي توفرها. تتوفر الأوتلاندر بمجموعة متنوعة من خيارات المحركات، بما في ذلك محركات بنزين وهجينة، مما يوفر خيارات متنوعة للعملاء حسب احتياجاتهم.'),
                ),//2016

              ],
            ),
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
