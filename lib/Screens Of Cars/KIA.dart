
import 'package:cars/Models%20Of%20Kia/FORTE.dart';
import 'package:cars/Models%20Of%20Kia/Kia2017.dart';
import 'package:cars/Models%20Of%20Kia/NIRO.dart';
import 'package:cars/Models%20Of%20Kia/RIO.dart';
import 'package:cars/models/GesterModelCar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Kia extends StatefulWidget {
  const Kia({super.key});

  @override
  State<Kia> createState() => _KiaState();
}

class _KiaState extends State<Kia> {
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
          body:isConnected?ListView(
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
                        return const FORTE();
                      }));
                } ,
                child: GestCarModel(txt2: 'هي سيارة سيدان مدمجة تنتجها شركة كيا موتورز الكورية الجنوبية. تم إطلاق فورتي لأول مرة في عام 2008، ومنذ ذلك الحين حققت شعبية ملحوظة في العديد من الأسواق العالمية.',
                  txt1: 'كيا فورتي 2023',
                  img1: 'https://ksa.motory.com/tinymce/2023_kia_forte_1_1661851984.jpg',),
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
                        return const RIO();
                      }));
                } ,
                child: GestCarModel(txt2: 'كيا ريو (Kia Rio) هي سيارة سيدان صغيرة تصنعها شركة كيا موتورز الكورية الجنوبية. تم إطلاق الجيل الأول من ريو في عام 2000، ومنذ ذلك الحين حظيت بشعبية واسعة في العديد من الأسواق العالمية.',
                  txt1: 'كيا ريو 2023',
                  img1: 'https://topcar.sa/storage/Images/Cars/webstdy_1701587690IMG_6572.jpg',),
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
                        return const NIRO();
                      }));
                } ,
                child: GestCarModel(txt2: 'كيا نيرو (Kia Niro) هي سيارة متعددة الاستخدامات مدمجة (Crossover) تنتجها شركة كيا موتورز الكورية الجنوبية. تم إطلاق نيرو لأول مرة في عام 2016، وتُقدم كخيار هجين وهجين مشحون بالكهرباء بالإضافة إلى نسخة كهربائية فقط.',
                  txt1: 'كيا نيرو 2023',
                  img1: 'https://cdn.syarah.com/photos-thumbs/online-v1/0x683/online/posts/190638/orignal-1708242430-290_cut.heic',),
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
                        return const Kia2017();
                      }));
                } ,
                child: GestCarModel(txt2: 'كيا سورينتو (Kia Sorento) هي سيارة دفع رباعي متعددة الاستخدامات (SUV) تنتجها شركة كيا موتورز الكورية الجنوبية. تم إطلاق الجيل الأول من سورينتو في عام 2002، ومنذ ذلك الحين حظيت بشعبية كبيرة في عدة أسواق عالمية.',
                  txt1: 'كيا سورينتو 2023',
                  img1: 'https://cdn.syarah.com/photos-thumbs/online-v1/0x683/online/posts/181014/orignal-1697707715-157_cut.jpeg',),
              ),
            ],
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
