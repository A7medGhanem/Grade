
import 'package:cars/Models%20Of%20Hyundai/Elantra.dart';
import 'package:cars/Models%20Of%20Hyundai/SONATA.dart';
import 'package:cars/models/GesterModelCar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import '../Models Of Hyundai/Hyundai2016.dart';
import '../Models Of Hyundai/Hyundai2017.dart';



class Hyundai extends StatefulWidget {
  const Hyundai({super.key});

  @override
  State<Hyundai> createState() => _BMWState();
}

class _BMWState extends State<Hyundai> {
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
            systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.red),
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
                          return const Hyundai2017();
                        }));
                  },
                  child: GestCarModel(img1: 'https://platform.cstatic-images.com/in/v2/stock_photos/19628685-d640-496a-8abc-a78e7a92fc98/412c5f84-fa82-457d-bb86-c6d7b4f02534.png',
                      txt1: 'هيونداي سنتافيه 2017',
                      txt2: 'نعرض لكم جميع مواصفات سيارة هيونداي سانتا في 2017هي سيارة كروس أوفر متوسطة الحجم من إنتاج شركة هيونداي الكورية الجنوبية. وهي متوفرة في طرازين أساسيين: سانتا في وسانتا في سبورت. وفيما يلي بعض الميزات والمواصفات الرئيسية لسيارة هيونداي سنتافي 2017'),
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
                          return const Hyundai2016();
                        }));
                  },
                  child: GestCarModel(img1: 'https://platform.cstatic-images.com/in/v2/stock_photos/a8a2a5fb-2ef6-4d53-b5b6-ff3ef25db0c6/2444b3b9-ceca-4dc8-9116-4d3b1bb7b46c.png',
                  txt1: 'هونداي أكورد 2016',txt2: 'حصلت هوندا أكورد 2016 على لمسات تصميمية أرقى وأكثر رياضية من ذي قبل ، واشتملت عملية تحديث الشكل الخارجي على صادم أمامي جديد رفيع وشبك أمامي جديد مع فتحة تهوية أفقية في الأسفل، بالإضافة إلى تصميم جديد لأضواء LED الأمامية والخلفية، مع تصاميم جديدة لإطارات المعدنية وجناح مدمج على حافة الصندوق الخلفي وفوهات عادم معدنية بيضاوية الشكل على جانبي الصادم الخلفي.'),
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
                          return const Elantra();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/9477/pictures/11048846/webp_listing_main_Hyundai_Elamtra_Exterior_01.webp',
                      txt1: 'هيونداي النترا 2023',
                      txt2: 'هيونداي إلانترا (Hyundai Elantra) هي سيارة سيدان متوسطة الحجم تنتجها شركة هيونداي موتور الكورية الجنوبية. تم إطلاق الجيل الأول من الإلانترا في عام 1990، ومنذ ذلك الحين حققت السيارة شعبية كبيرة في العديد من الأسواق حول العالم.'),
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
                          return const SONATA();
                        }));
                  },
                  child: GestCarModel(img1: 'https://s3.eu-central-1.amazonaws.com/v3-cfs.motory.com/vehicle-used/1000x750/l-1684922070.6467-646dded69de5c.webp',
                      txt1: 'هونداي سوناتا 2023',txt2: 'تتميز سيارة هيونداي سوناتا بتصميمها الأنيق والمعاصر، والذي يجمع بين الراحة والأداء الديناميكي. تتوفر السوناتا بمجموعة متنوعة من خيارات المحركات، بما في ذلك محركات بنزين وهجينة، وتتميز بتوفير قيادة سلسة واقتصادية للوقود.'),
                ),//2016

              ],
            ),
          ): Center(
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

