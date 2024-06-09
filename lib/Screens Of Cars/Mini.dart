import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Models Of Hyundai/Hyundai2016.dart';
import '../Models Of Hyundai/Hyundai2017.dart';
import '../models/GesterModelCar.dart';

class Mini extends StatelessWidget {
  const Mini({super.key});

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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
