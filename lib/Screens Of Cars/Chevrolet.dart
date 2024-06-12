import 'package:cars/Models%20Of%20Chevrolet/CHEVROLET%20SPARK.dart';
import 'package:cars/Models%20Of%20Chevrolet/CHEVROLET%20SUBURBAN.dart';
import 'package:cars/Models%20Of%20Chevrolet/Chervrolet%20Cruze.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models Of Chevrolet/CHEVROLET TRAVERSE.dart';

import '../models/GesterModelCar.dart';

class Chevrolet extends StatefulWidget {
  const Chevrolet({super.key});

  @override
  State<Chevrolet> createState() => _ChevroletState();
}

class _ChevroletState extends State<Chevrolet> {
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
                        return const CHEVROLET_CRUZE();
                      }));
                } ,
                child: GestCarModel(txt2: 'تتميز شيفروليه كروز بتصميمها الأنيق والجذاب، إلى جانب مساحتها الداخلية الواسعة والمريحة بالنسبة لفئتها. تتوفر كروز بمجموعة متنوعة من خيارات المحركات، بما في ذلك محركات بنزين وديزل، مما يسمح للعملاء باختيار الأداء الذي يناسبهم.',
                  txt1: 'شيفروليه كروز 2023',
                  img1: 'https://www.chevrolet.com.br/content/dam/chevrolet/mercosur/brazil/portuguese/index/cars/2021-cruze-premier/mov/03-images/asset-galeria-01.jpg?imwidth=1200',),
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
                        return const CHEVROLET_SPARK();
                      }));
                } ,
                child: GestCarModel(txt2: 'تتميز سيارة شيفروليه سبارك بمساحتها الداخلية الواسعة مقارنة بحجمها الصغير، والتي توفر راحة للركاب وتسهيل الحركة في الطرق المزدحمة. كما تتضمن ميزات تقنية متقدمة للراحة والسلامة مثل نظام الترفيه والمعلومات ونظام الاستشعار للتحكم في الانزلاق.',
                  txt1: 'شيفروليه سبارك 2023',
                  img1: 'https://ymimg1.b8cdn.com/resized/car_model/9537/pictures/11050047/webp_listing_main_01.webp',),
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
                        return CHEVROLET_SUBURBAN();
                      }));
                } ,
                child: GestCarModel(txt2: 'شيفروليه سوبربان (Chevrolet Suburban) هي سيارة SUV كبيرة الحجم تنتجها شركة جنرال موتورز الأمريكية. تعتبر سوبربان واحدة من أقدم سيارات الدفع الرباعي في السوق، حيث بدأ إنتاجها في عام 1935. ومنذ ذلك الحين، تمتلك سوبربان تاريخًا طويلًا من القوة والأداء والمتانة.',
                  txt1: 'شيفروليه سوبربان 2023',
                  img1: 'https://media.ed.edmunds-media.com/chevrolet/suburban/2022/oem/2022_chevrolet_suburban_4dr-suv_premier_fq_oem_1_815x543.jpg',),
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
                        return const CHEVROLET_TRAVERSE();
                      }));
                } ,
                child: GestCarModel(txt2: 'تعتبر ترافيرس من السيارات المتعددة الاستخدامات، حيث يمكن استخدامها للقيادة اليومية في المدينة وكذلك لرحلات طويلة على الطرق السريعة. تتوفر بمجموعة متنوعة من الميزات التكنولوجية وأنظمة السلامة، بما في ذلك نظام معلومات وترفيه متطور ونظام الفرامل المانعة للانغلاق ABS ونظام مراقبة ضغط الإطارات وغيرها، مما يجعلها سيارة آمنة وموثوقة',
                  txt1: 'شيفروليه ترافيرسي 2023',
                  img1: 'https://www.chevroletarabia.com/content/dam/chevrolet/middle-east/master/english/index/crossovers-and-suvs/2023-traverse/01-images/03-gallery/external/2023-traverse-ext-gal-08.png?imwidth=1200',),
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
