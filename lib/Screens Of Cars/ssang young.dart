import 'package:cars/Models%20of%20SSYOUNG/SsangYong%20Actyon.dart';
import 'package:cars/Models%20of%20SSYOUNG/SsangYong%20Chairman.dart';
import 'package:cars/Models%20of%20SSYOUNG/SsangYong%20Rexton.dart';
import 'package:cars/Models%20of%20SSYOUNG/SsangYong%20Rodius.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models of Nissan/ALTIMA.dart';
import '../Models of Nissan/PATROL.dart';
import '../Models of Nissan/Sunny.dart';
import '../Models of Toyota/Toyota Corolla.dart';
import '../models/GesterModelCar.dart';

class Ssang extends StatefulWidget {
  const Ssang({super.key});

  @override
  State<Ssang> createState() => _SsangState();
}

class _SsangState extends State<Ssang> {
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
                          return const SsangYong_Actyon();
                        }));
                  },
                  child: GestCarModel(img1: 'https://www.reezocar.com/raw/autoscout24api.eu/RZCATSEU8075BC8ED72D/SSANGYONG-ACTYON-00.webp',
                      txt1: ' سانج يانج اكتيون 2023',
                      txt2: 'سيارة SsangYong Actyon هي سيارة SUV مدمجة تنتجها شركة SsangYong Motor الكورية الجنوبية. تم إطلاقها لأول مرة في عام 2005 وحصلت على تحديثات متعددة على مر السنوات. تقدم Actyon مزيجًا من الأداء الجيد والمظهر العصري.'),
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
                          return const SsangYong_Chairman();
                        }));
                  },
                  child: GestCarModel(img1: 'https://www.kg-mobility.com/en/images/showroom/pic_cw_highlight1.jpg',
                      txt1: 'سانج يونج شيرمان 2023',txt2: 'السيارة SsangYong Chairman هي سيارة فاخرة تم تصنيعها من قبل شركة SsangYong Motors الكورية الجنوبية. بدأت الشركة في إنتاج هذه السيارة في منتصف التسعينيات واستمرت حتى العقد الأول من الألفية الثالثة. تعتبر SsangYong Chairman واحدة من السيارات التي تهدف إلى توفير تجربة قيادة فاخرة ومريحة مع تقنيات متقدمة.'),
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
                          return const  SsangYong_Rexton();
                        }));
                  },
                  child: GestCarModel(img1: 'https://img.mstaml.com/i168167995938210057/%D8%B3%D9%8A%D8%A7%D8%B1%D8%A9-%D8%B3%D8%A7%D9%86%D8%AC-%D9%8A%D9%88%D9%86%D8%AC-%D8%B1%D9%8A%D9%83%D8%B3%D8%AA%D9%88%D9%86-SSANGYONG-REXTON-Mid-Option-2WD-2023-%D9%85%D9%88%D8%A7%D8%B5%D9%81%D8%A7%D8%AA-%D9%88%D8%B5%D9%88%D8%B1-%D9%88%D8%A7%D8%B3%D8%B9%D8%A7%D8%B1-%D9%81%D9%8A-%D9%85%D8%B5%D8%B1-%D8%B5%D9%88%D8%B1%D8%A9-%D8%B3%D9%8A%D8%A7%D8%B1%D8%A9-%D8%B3%D8%A7%D9%86%D8%AC-%D9%8A%D9%88%D9%86%D8%AC-%D8%B1%D9%8A%D9%83%D8%B3%D8%AA%D9%88%D9%86-SSANGYONG-REXTON-2023.jpg',
                      txt1: 'سانج يونج ريكستون 2023',
                      txt2: 'سيارة SsangYong Rexton هي واحدة من سيارات الدفع الرباعي الشهيرة التي تصنعها شركة SsangYong Motors الكورية الجنوبية. بدأت هذه السيارة رحلتها في السوق في بداية الألفية الثالثة واستمرت في التطور عبر الأجيال لتصبح واحدة من الخيارات المفضلة لدى الكثيرين من عشاق السيارات العائلية والمغامرة.'),
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
                          return const SsangYong_Rodius();
                        }));
                  },
                  child: GestCarModel(img1: 'https://d1hv7ee95zft1i.cloudfront.net/custom/car-model-photo/original/ssangyong-rodius-philippines-front-5bf4c529a4d4d.webp',
                      txt1: 'سانج يونج رودياس 2023',txt2: 'سيارة SsangYong Rodius، المعروفة أيضاً في بعض الأسواق باسم Stavic، هي سيارة متعددة الأغراض (MPV) تم إنتاجها من قبل شركة SsangYong Motors الكورية الجنوبية. تم تصميم هذه السيارة لتلبية احتياجات العائلات الكبيرة والأفراد الذين يبحثون عن مساحة واسعة وراحة أثناء التنقل.'),
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
