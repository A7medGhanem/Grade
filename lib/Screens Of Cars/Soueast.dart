import 'package:cars/Models%20of%20Soueast/Soueast%20A5.dart';
import 'package:cars/Models%20of%20Soueast/Soueast%20DX7.dart';
import 'package:cars/Models%20of%20Soueast/Soueast%20DX9.dart';
import 'package:cars/Models%20of%20Soueast/Soueast%20V5.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../Models of SSYOUNG/SsangYong Rodius.dart';
import '../Models of Volvo/Volvo S60.dart';
import '../Models of Volvo/Volvo S80.dart';
import '../Models of Volvo/Volvo XC70.dart';
import '../models/GesterModelCar.dart';

class Soueast extends StatefulWidget {
  const Soueast({super.key});

  @override
  State<Soueast> createState() => _SoueastState();
}

class _SoueastState extends State<Soueast> {
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
                          return const Soueast_A5();
                        }));
                  },
                  child: GestCarModel(img1: 'https://media.hatla2eestatic.com/uploads/ncarmodel/11036/big-up_f26541474b868c5bbfa4c69a832c31b7.png',
                      txt1: 'سوايست ايه 5 2023',
                      txt2: 'سيارة سوإيست A5 (Soueast A5) هي سيارة سيدان متوسطة الحجم تنتجها شركة سوإيست موتورز، وهي شركة صينية متخصصة في صناعة السيارات. تعتبر سوإيست A5 خيارًا مثاليًا للأسر والأفراد الذين يبحثون عن سيارة مريحة ومتينة تناسب الاستخدام اليومي والسفر الطويل.'),
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
                          return const Soueast_DX7();
                        }));
                  },
                  child: GestCarModel(img1: 'https://media.hatla2eestatic.com/uploads/ncarmodel/10055/big-up_756cc64b44281466792ea362561f0edd.jpg',
                      txt1: 'سوايست دي اكس 7 2023',txt2: 'سيارة سوإيست DX7 (Soueast DX7) هي سيارة SUV متوسطة الحجم تنتجها شركة سوإيست موتورز، وهي شركة صينية تعمل في مجال صناعة السيارات. تمثل سوإيست DX7 خيارًا ممتازًا للأسر والأفراد الذين يبحثون عن سيارة عائلية مريحة وعملية، تتميز بمساحتها الداخلية الكبيرة ومواصفاتها المتقدمة.'),
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
                          return const  Soueast_DX9();
                        }));
                  },
                  child: GestCarModel(img1: 'https://www.chinamobil.ru/photo/SeDX8/full/soueast-dx8-02.jpg',
                      txt1: 'سوايست دي اكس9 2023',
                      txt2: 'بتصميم عصري وجذاب يجمع بين الأناقة والرياضية، مع خطوط ديناميكية وشبكة أمامية كبيرة تضفي عليها مظهرًا قويًا. تتوفر المصابيح الأمامية والخلفية بتقنية LED لتحسين الرؤية وزيادة الأمان أثناء القيادة ليلاً.'),
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
                          return const Soueast_V5();
                        }));
                  },
                  child: GestCarModel(img1: 'https://www.chinamobil.ru/photo/SeV5/full/soueast-v5-01.jpg',
                      txt1: 'سوايست ڤي 5 2023',txt2: 'سيارة سوإيست V5 (Soueast V5) هي سيارة صغيرة الحجم من إنتاج شركة سوإيست موتورز، وهي شركة صينية تعمل في مجال صناعة السيارات. تعتبر سوإيست V5 خيارًا اقتصاديًا ومناسبًا للأسر الصغيرة والأفراد الذين يبحثون عن سيارة مدمجة للاستخدام اليومي في الحياة الحضرية. '),
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
