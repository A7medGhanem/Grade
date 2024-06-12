import 'package:cars/Models%20of%20BMW/BMW%203%20Series.dart';
import 'package:cars/Models%20of%20BMW/BMW%20M5.dart';
import 'package:cars/Models%20of%20BMW/BMW%20X3.dart';
import 'package:cars/Models%20of%20BMW/BMW%20X7.dart';
import 'package:cars/models/GesterModelCar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models of Mercedes/Mercedes-Benz AMG GT.dart';
import '../Models of Mercedes/Mercedes-Benz E-Class.dart';
import '../Models of Mercedes/Mercedes-Benz GLC.dart';
import '../Models of Mercedes/Mercedes-Benz GLS.dart';

class Bmw extends StatefulWidget {
  const Bmw({super.key});

  @override
  State<Bmw> createState() => _BmwState();
}

class _BmwState extends State<Bmw> {
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
          appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 80,
                child: Text('انواع السيارات',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          body:isConnected? ListView(
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
                        return const BMW3();
                      }));
                } ,
                child: GestCarModel(txt2: 'بي ام دبليو الفئة الثالثة (BMW 3 Series) هي سلسلة من السيارات الفاخرة والرياضية المُصممة والمُصنعة بواسطة شركة السيارات الألمانية بي إم دبليو. تُعتبر السلسلة واحدة من أكثر السيارات شهرة وتقديرًا في فئتها، وهي معروفة بأدائها الممتاز وتصميمها الأنيق وتقنياتها المبتكرة.',
                  txt1: 'بي ام دبليو الفئة الثالثة 2023',
                  img1: 'https://ymimg1.b8cdn.com/resized/car_model/9734/pictures/11053118/webp_listing_main_14556_st1280_046.webp',),
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
                        return BMW_M5();
                      }));
                } ,
                child: GestCarModel(txt2: 'تتميز BMW M5 بأداء مذهل وقوة استثنائية. تتوفر معظم الطرازات الحديثة بمحرك V8 ثنائي التيربو ينتج قوة تفوق 600 حصان، مما يمنحها تسارعاً هائلاً وقوة دفع فورية. تأتي السيارة بناقل حركة آلي مزدوج بسبع سرعات يتيح للسائقين تجربة قيادة رياضية حقيقية.',
                  txt1: ' بي ام دبليو ام 5 2023',
                  img1: 'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_fq_oem_7_815x543.jpg',),
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
                        return BMW_X3();
                      }));
                } ,
                child: GestCarModel(txt2: 'سيارة BMW X3 هي عبارة عن سيارة SUV متوسطة الحجم تُصنعها شركة BMW الألمانية. تمثل X3 جزءًا من فئة سيارات X الرياضية متعددة الاستخدامات من BMW والتي تقدم مزيجًا من الأداء الرياضي والراحة والتطور التكنولوجي.',
                  txt1: 'ام دبليو اكس 3 2023',
                  img1: 'https://www.cars.com/i/xlarge/in/v2/stock_photos/ceb177ea-e702-4206-be6e-dd48d6914371/934a882a-93bf-46ef-b92c-6b6ea4b6b209.png',),
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
                        return const BMW_X7();
                      }));
                } ,
                child: GestCarModel(txt2: ' هي سيارة SUV فاخرة تمثل القمة في فخامة وراحة القيادة التي تقدمها شركة BMW الألمانية. تم إطلاق BMW X7 لأول مرة في عام 2018، وهي تمثل أعلى مستوى من الرفاهية والأداء في فئة السيارات الرياضية متعددة الاستخدامات.',
                  txt1: 'ام دبليو اكس 7 2023',
                  img1: 'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_xdrive40i_fq_oem_10_815x543.jpg',),
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
