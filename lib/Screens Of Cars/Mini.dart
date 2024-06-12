import 'package:cars/Models%20of%20mini/MiniClub.dart';
import 'package:cars/Models%20of%20mini/MiniConutry.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Models of mini/Beacman.dart';
import '../Models of mini/Mini Cooper.dart';
import '../models/GesterModelCar.dart';

class Mini extends StatefulWidget {
  const Mini({super.key});

  @override
  State<Mini> createState() => _MiniState();
}

class _MiniState extends State<Mini> {
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
                          return const Mini_cooper();
                        }));
                  },
                  child: GestCarModel(img1: 'https://www.elbalad.news/Upload/libfiles/976/9/600.jpg',
                      txt1: 'ميني كوبر 2023',
                      txt2: 'سيارة Mini Cooper موديل 2023 تجمع بين التصميم الأيقوني الكلاسيكي والأداء العصري القوي، مع خيارات متعددة للمحركات تتراوح بين البنزين والهجين. تتميز بمقصورة داخلية فاخرة مزودة بأحدث التقنيات الترفيهية وأنظمة الأمان. توفر تجربة قيادة ممتعة واقتصادية في استهلاك الوقود، مما يجعلها خيارًا مميزًا في فئة السيارات الصغيرة الفاخرة.'),
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
                          return const MiniCountry();
                        }));
                  },
                  child: GestCarModel(img1: 'https://media.hatla2eestatic.com/uploads/ncarmodel/10227/big-up_b50afb6b6260958c93b47f846d6f539a.jpg',
                      txt1: ' ميني كانتري مان',txt2: 'ميني كانتري مان هي سيارة كروس أوفر فاخرة صغيرة يشغّلها محرك صغير بأداء جيد. وتشتهر سيارات ميني بأناقتها البريطانية وأدائها. ويعد طراز كانتري مان، أو Countryman، الأكبر في تشكيلة Mini مع  مساحة تخزين تبلغ 450 لترًا في الصندوق الخلفي. وهي تدمج بين هوية سيارات ميني كسيارات صغيرة رياضية، واستعمال الكروس اوفر. وتعمل ميني كانتري مان بمحرك توربيني سعة 1.5 لتر رباعي الاسطوانات، مع العديد من خيارات القوة، بالإضافة إلى توفر محرك هجين.'),
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
                          return const  MiniClub();
                        }));
                  },
                  child: GestCarModel(img1: 'https://arabgt.com/wp-content/uploads/2023/02/%D8%B3%D9%8A%D8%A7%D8%B1%D8%A9-%D9%85%D9%8A%D9%86%D9%8A-%D9%83%D9%84%D9%88%D8%A8%D9%85%D8%A7%D9%86-2023-2.jpg',
                      txt1: 'ميني كلوبمان 2023',
                      txt2: 'ميني كلوبمان 2023 هي واحدة من سيارات ميني الرياضية الهاتشباك التي تحافظ على التصميم التقليدي الخالد لسيارات ميني، بمصابيحها الأمامية الدائرية وشكلها المربع. وتقدم السيارة تصميماً خارجياً وداخلياً أنيقاً يُبرز لمسة الفخامة الصناعة البريطانية للسيارة. فهي سيارة مناسبة للأشخاص الذين ما زالت يمتلكون الروح الشبابية والرياضية ويحبون الحياة.'),
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
                          return const Mini_Paceman();
                        }));
                  },
                  child: GestCarModel(img1: 'https://media.ed.edmunds-media.com/mini/cooper-paceman/2016/oem/2016_mini_cooper-paceman_2dr-hatchback_s_fq_oem_9_815x543.jpg',
                      txt1: 'ميني بيسمان 2023',txt2: 'سيارة ميني كوبر Mini Paceman هي سيارة كروس أوفر كوبيه مدمجة قدمتها شركة ميني بين عامي 2012 و2016. تتميز بتصميم رياضي أنيق ومقصورة داخلية راقية تتسع لأربعة ركاب، بالإضافة إلى أداء ديناميكي ومحرك فعال. توفر السيارة تجربة قيادة ممتعة بفضل نظام الدفع الرباعي وتقنيات القيادة المتطورة.'),
                ),//2016

              ]
            ),
          ):
          Center(
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
