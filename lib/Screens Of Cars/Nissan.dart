import 'package:cars/Models%20of%20Nissan/ALTIMA.dart';
import 'package:cars/Models%20of%20Nissan/PATROL.dart';
import 'package:cars/Models%20of%20Nissan/Sunny.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';


import '../Models of Nissan/KICKS.dart';
import '../Models of Toyota/Toyota Corolla.dart';
import '../models/GesterModelCar.dart';

class Nissan extends StatefulWidget {
  const Nissan({super.key});

  @override
  State<Nissan> createState() => _NissanState();
}

class _NissanState extends State<Nissan> {
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
    return   Directionality(
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
                          return const Sunny();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/9546/pictures/11370666/webp_listing_main_2024-Nissan-SUNNY-Exterior-1.webp',
                      txt1: 'نيسان صني 2023',
                      txt2: 'ستستخدم نيسان مواد داخلية عالية الجودة لتوفير بيئة داخلية مريحة ومتينة.تزود نيسان صني 2023 بأحدث تقنيات الترفيه والمعلومات وأنظمة السلامة والقيادة المساعدة.م تحسين التصميم الخارجي والداخلي لإضفاء لمسات من الحداثة والأناقة على السيارة.'),
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
                          return const ALTIMA();
                        }));
                  },
                  child: GestCarModel(img1: 'https://s3.eu-central-1.amazonaws.com/v3-cfs.motory.com/vehicle-used/1000x750/l-1695885722.7365-6515299ab3d1c.webp',
                      txt1: 'نيسان التيما 2023',txt2: 'سيارة نيسان ألتيما هي سيارة سيدان متوسطة الحجم تُنتجها شركة نيسان اليابانية. تم إطلاق ألتيما لأول مرة في عام 1992 ومنذ ذلك الحين، أصبحت واحدة من السيارات الأكثر شعبية في فئتها.تتميز ألتيما بتصميم خارجي أنيق وجذاب يجمع بين الأناقة والديناميكية. وتأتي مع مقصورة داخلية مريحة ومجهزة بالعديد من الميزات التكنولوجية وميزات الراحة.'),
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
                          return const PATROL();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/9513/logo/webp_mobile_listing_main_2020_Patrol_logo1.webp',
                      txt1: 'نيسان باترول 2023',
                      txt2: 'سيارات نيسان باترول 2023 هي سيارة دفع رباعي مرتفعة كبيرة الحجم تُعتبر السيارة الأكبر في أسطول سيارات نيسان وقد قدمتها الشركة اليابانية عام 1957 وأطلقت منها سبعة أجيال ، وينتمي موديل 2023 إلى الجيل العاشر ولكنه حصل على عدد من التحديثات خلال السنوات السابقة كان آخرها في عام 2020 فيما ظهرت نسخة نيسمو عام 2021  وتعتبر باترول من السيارات المميزة في قدراتها على السير على الطرق الوعرة والطرق المعبدة  ومختلف التضاريس.'),
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
                          return const KICKS();
                        }));
                  },
                  child: GestCarModel(img1: 'https://salehcars.com/storage/products/out_647cc8579abfd1685899351.JPG',
                      txt1: 'نيسان كيكس 2023',txt2: 'نيسان كيكس هي سيارة SUV صغيرة مُصممة لتلبية احتياجات الحياة اليومية في المدينة، حيث تجمع بين الأداء الرياضي والمرونة والراحة في القيادة. تم إطلاق نيسان كيكس لأول مرة في عام 2016 ومنذ ذلك الحين حظيت بشعبية متزايدة بين العملاء الذين يبحثون عن سيارة صغيرة الحجم وسهلة القيادة في الحياة الحضرية.'),
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
