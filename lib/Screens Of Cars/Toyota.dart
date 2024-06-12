import 'package:cars/Models%20of%20Toyota/Avlon.dart';
import 'package:cars/Models%20of%20Toyota/Land%20Cruiser.dart';
import 'package:cars/Models%20of%20Toyota/Toyota%20Corolla.dart';
import 'package:cars/models/GesterModelCar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models of Toyota/Highlander.dart';


class Toyota extends StatefulWidget {
  const Toyota({super.key});

  @override
  State<Toyota> createState() => _ToyotaState();
}

class _ToyotaState extends State<Toyota> {
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
                          return const Avlon();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/8402/pictures/9133960/webp_listing_main_14572_st1280_046.webp',
                      txt1: 'افلون 2023',
                      txt2: 'تتضمن أفالون 2023 أحدث تقنيات الترفيه والمعلومات، بما في ذلك شاشات تعمل باللمس كبيرة ونظام معلومات متصل بالإنترنت، بالإضافة إلى تقنيات السلامة والقيادة المساعدة.من المتوقع أن تواصل تويوتا تطوير أفالون لعام 2023 بميزات تجعلها خيارًا مغريًا في فئتها كسيارة سيدان فاخرة متطورة وموثوقة.'),
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
                          return const Highlander();
                        }));
                  },
                  child: GestCarModel(img1: 'https://media.ed.edmunds-media.com/toyota/highlander/2023/oem/2023_toyota_highlander_4dr-suv_platinum_fq_oem_2_815x543.jpg',
                      txt1: 'هاي لاندر 2023',txt2: ' يحصل تصميم تويوتا هايلاندر 2023 على تحديثات في الشكل الخارجي مع تغييرات في المصابيح والشبكة الأمامية والخلفية لجعلها أكثر حداثة وجاذبية.ملتزمة بتوفير مساحة داخلية فسيحة ومريحة للركاب والبضائع مع مقاعد قابلة للتكوين بشكل مرن. '),
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
                          return const Land_Cruiser();
                        }));
                  },
                  child: GestCarModel(img1: 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Toyota/Land-Cruiser/8448/1623313668941/front-left-side-47.jpg',
                      txt1: 'تيوتا لاند كروزر 2023',
                      txt2: 'يُعتبر لاند كروزر من أيقونات السيارات الرباعية الدفع، والتي تحظى بشعبية كبيرة في مختلف أنحاء العالم.لاند كروزر ملتزمة بتوفير بيئة داخلية فاخرة مع مواد داخلية متينة وعالية الجودة تتحمل الاستخدام الشاق.تأتي لاند كروزر 2023 بمحركات فعالة من حيث استهلاك الوقود وقوية في الأداء لتلبية متطلبات القيادة الراحلة والمغامرة.'),
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
                          return const Toyota_Corolla();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/8309/pictures/9005607/webp_listing_main_Toyota_Corolla.webp',
                      txt1: 'تيوتا كرولا 2023',txt2: 'سيارة تويوتا كورولا هي سيارة سيدان مدمجة تُصنع من قبل شركة تويوتا اليابانية. تم إطلاقها لأول مرة في عام 1966 ومنذ ذلك الحين أصبحت واحدة من أكثر السيارات مبيعًا على مستوى العالم. تتميز كورولا بسمعة قوية للموثوقية والاقتصاد في استهلاك الوقود.'),
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
