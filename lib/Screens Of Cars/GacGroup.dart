import 'package:cars/Models%20of%20jac%20groub/JAC%20J4.dart';
import 'package:cars/Models%20of%20jac%20groub/JAC%20Refine%20A60.dart';
import 'package:cars/Models%20of%20jac%20groub/JAC%20S2.dart';
import 'package:cars/Models%20of%20jac%20groub/JAC%20S3.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models of Soueast/Soueast A5.dart';
import '../Models of Soueast/Soueast DX7.dart';
import '../Models of Soueast/Soueast DX9.dart';
import '../Models of Soueast/Soueast V5.dart';
import '../models/GesterModelCar.dart';

class Gac extends StatefulWidget {
  const Gac({super.key});

  @override
  State<Gac> createState() => _GacState();
}

class _GacState extends State<Gac> {
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
                          return const JAC_J4();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/3307/pictures/2968970/webp_listing_main_JAC_J4__4_.webp',
                      txt1: 'جاك جي 4 2023',
                      txt2: 'سيارة جاك J4 (JAC J4) هي سيارة سيدان مدمجة تنتجها شركة جاك موتورز (JAC Motors)، وهي شركة صينية معروفة بتصنيع مجموعة متنوعة من المركبات. تتميز جاك J4 بتصميمها العصري والمميزات المتقدمة التي تجعلها خيارًا جذابًا للمستخدمين الذين يبحثون عن سيارة اقتصادية وعملية. '),
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
                          return const  JAC_Refine();
                        }));
                  },
                  child: GestCarModel(img1: 'https://360view.3dmodels.org/zoom/JAC/JAC_Refine_A60_2016_1000_0001.jpg',
                      txt1: 'جاك ريفاين اي 60 2023',txt2: 'سيارة جاك ريفاين A60 (JAC Refine A60) هي سيارة سيدان متوسطة الحجم تنتجها شركة جاك موتورز الصينية. تعتبر هذه السيارة من الطرازات الفاخرة التي تقدمها جاك، حيث تجمع بين التصميم الأنيق، والتكنولوجيا الحديثة، والراحة العالية.'),
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
                          return const  JAC_S2();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/5804/pictures/4820798/webp_listing_main_JAC_S2__1_.webp',
                      txt1: 'جاك اس 2 2023',
                      txt2: 'جاك S2 (JAC S2) هي سيارة رياضية متعددة الاستخدامات صغيرة الحجم (SUV) تنتجها شركة جاك موتورز الصينية. تم تصميم هذه السيارة لتلبية احتياجات العملاء الذين يبحثون عن سيارة مدمجة واقتصادية تلائم الاستخدام اليومي والتنقل داخل المدينة.'),
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
                          return const JAC_S3();
                        }));
                  },
                  child: GestCarModel(img1: 'https://cdn2.chinesecars.me/wp-content/uploads/2022/04/jac-s3-2022-1.jpg',
                      txt1: 'جاك اس 3 2023',txt2: 'تتميز جاك S3 بتصميم عصري وجذاب يجمع بين السمات الرياضية والاستخدام اليومي. تتضمن العناصر البارزة مصابيح LED أمامية وخلفية، وشبكة أمامية مميزة، وتفاصيل ديناميكية تعزز من جاذبيتها البصرية. '),
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
