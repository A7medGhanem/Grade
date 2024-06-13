import 'package:cars/Models%20of%20Volvo/Volvo%20S60.dart';
import 'package:cars/Models%20of%20Volvo/Volvo%20S80.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';


import '../Models of SSYOUNG/SsangYong Rodius.dart';
import '../Models of Volvo/Volvo XC70.dart';
import '../models/GesterModelCar.dart';

class Volvo extends StatefulWidget {
  const Volvo({super.key});

  @override
  State<Volvo> createState() => _VolvoState();
}

class _VolvoState extends State<Volvo> {
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
    return  Directionality(
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
                          return const Volvo_S60();
                        }));
                  },
                  child: GestCarModel(img1: 'https://hips.hearstapps.com/hmg-prod/images/294033-s60-recharge-t8-thunder-grey-1647010623.jpg?crop=0.720xw:0.540xh;0.124xw,0.312xh&resize=1200:*',
                      txt1: 'فولفو اس 60 2023',
                      txt2: 'سيارة فولفو S60 هي سيارة سيدان فاخرة متوسطة الحجم تُنتجها شركة فولفو السويدية. تم إطلاق الجيل الأول من سيارة S60 في عام 2000، ومنذ ذلك الحين شهدت عدة تحديثات وتطويرات لتصبح واحدة من السيارات المفضلة في فئتها. تتميز S60 بتصميم أنيق وعصري مع تركيز كبير على الأمان والتكنولوجيا.'),
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
                          return const Volvo_S80();
                        }));
                  },
                  child: GestCarModel(img1: 'https://media.ed.edmunds-media.com/volvo/s60/2023/oem/2023_volvo_s60_sedan_t8-polestar-engineered_f_oem_1_815x543.jpg',
                      txt1: 'فولفو اس 80 2023',txt2: 'سيارة فولفو S80 هي سيارة سيدان فاخرة كبيرة الحجم تنتجها شركة فولفو السويدية. تم إطلاقها لأول مرة في عام 1998 كبديل فاخر لسيارة Volvo 960، ومنذ ذلك الحين شهدت عدة تحديثات وتطويرات.تتميز فولفو S80 بتصميم أنيق وراقي، مع داخلية مريحة ومجهزة بالتكنولوجيا الحديثة. تتوفر S80 بمجموعة متنوعة من المحركات، بما في ذلك محركات البنزين والديزل، وتميل الشركة أيضًا إلى تقديم نسخ هجينة في بعض الأسواق.'),
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
                          return const  Volvo_XC70();
                        }));
                  },
                  child: GestCarModel(img1: 'https://images.prd.kavak.io/eyJidWNrZXQiOiJrYXZhay1pbWFnZXMiLCJrZXkiOiJpbWFnZXMvMzIwNTgxL2Zyb250U2lkZVBpbG90TmVhci1FWFRFUklPUi00OWFmODA4Yi04ZDVjLTRjOTEtYTQzYi03MzYwZDI5OWFkMDMuanBlZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6ODEwLCJoZWlnaHQiOjQ2NX19fQ==',
                      txt1: 'فولفو اكس سي 70 2023',
                      txt2: 'سيارة فولفو XC70 هي سيارة كروس أوفر متوسطة الحجم تنتجها شركة فولفو السويدية. تم إطلاقها لأول مرة في عام 1997، وهي تعتبر إصدارًا محسّنًا ومتطوّرًا لسيارة V70 الشهيرة، مع تركيز خاص على الأداء خارج الطريق والقدرة على المغامرة.'),
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
                  child: GestCarModel(img1: 'https://images.prd.kavak.io/eyJidWNrZXQiOiJrYXZhay1pbWFnZXMiLCJrZXkiOiJpbWFnZXMvMzE2OTE5L2Zyb250U2lkZVBpbG90TmVhci1FWFRFUklPUi1hOTJjNTdiOC1lZGRlLTQxNTQtOTQzMy04ZWFlODI4ZGY3MDkuanBlZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6ODEwLCJoZWlnaHQiOjQ2NX19fQ==',
                      txt1: 'فولفو اكس سي 90 2023',txt2: 'سيارة فولفو XC90 هي سيارة دفع رباعي (SUV) فاخرة تمثل رمزًا للتصميم الأنيق والأداء المتميز والسلامة الفائقة. تم إطلاق XC90 لأول مرة في عام 2002 كأول سيارة SUV لفولفو، ومنذ ذلك الحين حافظت على مكانتها كواحدة من أكثر السيارات شعبيةً في فئتها.'),
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
