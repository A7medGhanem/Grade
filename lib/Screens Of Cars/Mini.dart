import 'package:cars/Models%20of%20mini/MiniClub.dart';
import 'package:cars/Models%20of%20mini/MiniConutry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Models Of Hyundai/Hyundai2016.dart';
import '../Models Of Hyundai/Hyundai2017.dart';
import '../Models of mini/Mini Cooper.dart';
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
