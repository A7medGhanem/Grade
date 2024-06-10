import 'package:cars/Models%20of%20Nissan/ALTIMA.dart';
import 'package:cars/Models%20of%20Nissan/PATROL.dart';
import 'package:cars/Models%20of%20Nissan/Sunny.dart';
import 'package:flutter/material.dart';

import '../Models of Toyota/Avlon.dart';
import '../Models of Toyota/Highlander.dart';
import '../Models of Toyota/Land Cruiser.dart';
import '../Models of Toyota/Toyota Corolla.dart';
import '../models/GesterModelCar.dart';

class Nissan extends StatelessWidget {
  const Nissan({super.key});

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
          body: Padding(
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
                          return const Toyota_Corolla();
                        }));
                  },
                  child: GestCarModel(img1: 'https://ymimg1.b8cdn.com/resized/car_model/8309/pictures/9005607/webp_listing_main_Toyota_Corolla.webp',
                      txt1: 'تيوتا كرولا 2023',txt2: 'سيارة تويوتا كورولا هي سيارة سيدان مدمجة تُصنع من قبل شركة تويوتا اليابانية. تم إطلاقها لأول مرة في عام 1966 ومنذ ذلك الحين أصبحت واحدة من أكثر السيارات مبيعًا على مستوى العالم. تتميز كورولا بسمعة قوية للموثوقية والاقتصاد في استهلاك الوقود.'),
                ),//2016

              ],
            ),
          ),
        ),
      ),
    );
  }
}
