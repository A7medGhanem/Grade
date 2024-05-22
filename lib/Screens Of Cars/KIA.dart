
import 'package:cars/Models%20Of%20Kia/Kia2017.dart';
import 'package:cars/models/GesterModelCar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kia extends StatelessWidget {
  const Kia({super.key});

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
          body:ListView(
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
                        return const Kia2017();
                      }));
                } ,
                child: GestCarModel(txt2: 'تم تحديث شكلها حيث تم صنعها لتشبه اختها اوبتيما بعض الشئ مع خطوط السيراتو الفريدة لتخرج بشكل جديد كليا، ايضا تم تطوير السيارة من الداخل لتصبح اكثر راحة وتطور،',
                  txt1: 'كيا سيراتو 2017',
                  img1: 'https://ymimg1.b8cdn.com/resized/car_model/2651/pictures/2893649/webp_listing_main_01.webp',),
              ),
              GestCarModel(txt2: 'تم تحديث شكلها حيث تم صنعها لتشبه اختها اوبتيما بعض الشئ مع خطوط السيراتو الفريدة لتخرج بشكل جديد كليا، ايضا تم تطوير السيارة من الداخل لتصبح اكثر راحة وتطور،',
                txt1: 'كيا سييد 2017',
                img1: 'https://ymimg1.b8cdn.com/resized/car_model/2651/pictures/2893649/webp_listing_main_01.webp',),
              GestCarModel(txt2: 'تم تحديث شكلها حيث تم صنعها لتشبه اختها اوبتيما بعض الشئ مع خطوط السيراتو الفريدة لتخرج بشكل جديد كليا، ايضا تم تطوير السيارة من الداخل لتصبح اكثر راحة وتطور،',
                txt1: 'كيا سييد 2017',
                img1: 'https://ymimg1.b8cdn.com/resized/car_model/2651/pictures/2893649/webp_listing_main_01.webp',),
              GestCarModel(txt2: 'تم تحديث شكلها حيث تم صنعها لتشبه اختها اوبتيما بعض الشئ مع خطوط السيراتو الفريدة لتخرج بشكل جديد كليا، ايضا تم تطوير السيارة من الداخل لتصبح اكثر راحة وتطور،',
                txt1: 'كيا سييد 2017',
                img1: 'https://ymimg1.b8cdn.com/resized/car_model/2651/pictures/2893649/webp_listing_main_01.webp',),
            ],
          ),

        ),
      ),
    );
  }
}
