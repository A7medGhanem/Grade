import 'package:carousel_slider/carousel_slider.dart';
import 'package:cars/Screen.dart/Indicative%20directions.dart';
import 'package:cars/Screen.dart/Parts%20Of%20Cars.dart';
import 'package:cars/Screen.dart/Traffic%20instructions.dart';
import 'package:cars/Screen.dart/accessories.dart';
import 'package:cars/Screen.dart/Regulatory signals.dart';
import 'package:cars/Screens%20Of%20Cars/Chevrolet.dart';
import 'package:cars/Screens%20Of%20Cars/GacGroup.dart';
import 'package:cars/Screens%20Of%20Cars/Haval.dart';
import 'package:cars/Screens%20Of%20Cars/Jeep.dart';
import 'package:cars/Screens%20Of%20Cars/KIA.dart';
import 'package:cars/Screens%20Of%20Cars/Land_Rover.dart';
import 'package:cars/Screens%20Of%20Cars/Mercedes.dart';
import 'package:cars/Screens%20Of%20Cars/Mitsubishi.dart';
import 'package:cars/Screens%20Of%20Cars/Nissan.dart';
import 'package:cars/Screens%20Of%20Cars/Soueast.dart';
import 'package:cars/Screens%20Of%20Cars/Toyota.dart';
import 'package:cars/Screens%20Of%20Cars/Volvo.dart';
import 'package:cars/Screens%20Of%20Cars/ssang%20young.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Screens Of Cars/BMW.dart';
import 'Screens Of Cars/Foton.dart';
import 'Screens Of Cars/Hyundai.dart';
import 'Screens Of Cars/Mini.dart';
import 'catogerys.dart/FindTxt.dart';
import 'catogerys.dart/SEARCH.dart';
import 'catogerys.dart/TOPTEXT.dart';
import 'catogerys.dart/card best.dart';
import 'catogerys.dart/Cards.dart';
import 'catogerys.dart/section card.dart';
import 'models/img.dart';


class MainScreen extends StatefulWidget {
 const MainScreen({super.key});

  @override

  State<MainScreen> createState() => _MainScreenState();


}



class _MainScreenState extends State<MainScreen> {

 final List<Pic> numbers= [
   Pic(img: 'Images/Hyundai_logo_PNG2.png',num: 35),
   Pic(img: 'Images/MINI_logo_PNG2.png',num: 20),
   Pic(img: 'Images/SsangYong.png',num: 5),
   Pic(img: 'Images/Mitsubishi_logo_PNG5.png',num:20),
   Pic(img: 'Images/Mercedes_logo_PNG19.png',num:150),
   Pic(img: 'Images/Haval_logo_PNG3.png',num:5),
   Pic(img: 'Images/Foton_logo_PNG12.png',num:22),
   Pic(img: 'Images/GAC-Group-logo.png',num:20),
   Pic(img: 'Images/Soueast-logo-768x529.png',num:7),
   Pic(img: 'Images/Volvo_logo_PNG6.png',num: 50),
   Pic(img: 'Images/Land_Rover_logo_PNG19.png',num: 20),
   Pic(img: 'Images/Toyota_logo_PNG15.png',num: 40),
   Pic(img: 'Images/Nissan_logo_PNG1.png',num: 40),
   Pic(img: 'Images/Chevrolet_logo_PNG3.png',num: 30),
   Pic(img: 'Images/BMW_logo_PNG1.png',num:60),
   Pic(img: 'Images/Jeep_logo_PNG2.png',num:40),
   Pic(img: 'Images/Kia.png',num:40),
 ];



   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fd),

      body:
      ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:
            ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child:  Column(
                children: [

                  const SizedBox(height: 22,),

                 const TopText(),

                  const FindText(),
                  const SizedBox(height: 20,),
                  const SearchIcon(),
                  const SizedBox(height: 10,),
                  CarouselSlider(items:[
                    const CardOne(image1: 'Images/back3.png', text1: 'تعلم كيف ', image2: 'Assets Josn/me.json',
                        text2: 'تقود سيارتك',color1: Colors.yellow,color2: Colors.white,
                        HeightImage: 250,TopText: 35,LeftText:35,Bottmimg: -50,Lftimg: 120),//تعلم كيف تقود سيارتك

                    const CardOne(image1: 'Images/pink.png', text1: 'تعرف علي ', image2: 'Assets Josn/white car.json',
                      text2: 'مميزات سيارتك',color1: Colors.yellow,color2: Colors.white,
                      HeightImage: 120,TopText: 35,LeftText: 30,Bottmimg: 2,Lftimg:190),//تعرف علي مميزات سيارتك

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('Images/red.png'),fit: BoxFit.fill),
                            borderRadius:BorderRadius.circular(10) ),
                        child: Stack(children: [
                          Positioned(

                            left: 190,
                            child: Lottie.asset('Assets Josn/trafic.json',
                              height: 150,
                              width: 200,

                                                       ),
                          ),
                          Positioned(
                            left: -60,
                            child: Lottie.asset('Assets Josn/signal.json',
                              height: 150,
                              width: 200,

                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 40,left: 110),
                            child: const Column(
                              children: [
                             Text('تعلم قواعد ',style: TextStyle(color: Colors.white,fontFamily: 'ibmB',fontSize: 24),),
                                Text('الـمرور ',style: TextStyle(color: Colors.yellow,fontFamily: 'ibmB',fontSize: 24),)
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                      options: CarouselOptions(
                        height: 160,
                        initialPage: 0,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal
                      )),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text('* تصفح السيارات',style: TextStyle(color: Colors.black,fontFamily: 'ibmB',fontSize: 14),),
                  ],),//text تصفح السيارات
                  const SizedBox(height: 12.5,),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(

                      children: [
                       BestCard(number: numbers[0],number2: numbers[0], ontap:(){
                         Navigator.push(context, PageRouteBuilder(
                             transitionDuration:const Duration(milliseconds: 500) ,
                             reverseTransitionDuration: const Duration(milliseconds: 500),
                             transitionsBuilder: (context,animation,secondaryAnimation,child)
                             {
                               final slideAnimation= Tween(begin: const Offset(2,0),end: const Offset(0,0)).animate(animation);
                               return SlideTransition(position: slideAnimation,child: child,);
                             },
                             pageBuilder: (context,animation,secondaryAnimation)
                             {
                               return const Hyundai();
                             }));
                       },),//Hyundai
                       BestCard(number:numbers[1],number2: numbers[1],ontap: (){
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
                               return const Mini();
                             }));
                       },),//MINI
                        BestCard(number: numbers[2],number2: numbers[2],ontap: (){
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
                                return const Ssang();
                              }));
                        },),//ssang
                        BestCard(number: numbers[3],number2: numbers[3], ontap: (){
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
                                return const Mitsubishi();
                              }));
                        },),//Mitsubishi
                        BestCard(number: numbers[4],number2: numbers[4], ontap: (){
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
                                return const Mercedes();
                              }));
                        },),//Mercedes
                        BestCard(number: numbers[5],number2: numbers[5], ontap: (){
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
                                return const Haval();
                              }));
                        },),//Haval
                        BestCard(number: numbers[6],number2: numbers[6], ontap: (){
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
                                return const Foton();
                              }));
                        },),//Foton
                        BestCard(number: numbers[7],number2: numbers[7], ontap: (){
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
                                return const Gac();
                              }));
                        },),//Gac-Group
                        BestCard(number: numbers[8],number2: numbers[8], ontap: (){
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
                                return const Soueast();
                              }));
                        },),//Soueast
                        BestCard(number: numbers[9],number2: numbers[9], ontap: (){
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
                                return const Volvo();
                              }));
                        },),//Volvo
                        BestCard(number: numbers[10],number2: numbers[10], ontap: (){
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
                                return const LandRover();
                              }));
                        },),//LandRover
                        BestCard(number: numbers[11],number2: numbers[11], ontap: (){
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
                                return const Toyota();
                              }));
                        },),//Toyota
                        BestCard(number: numbers[12],number2: numbers[12], ontap: (){
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
                                return const Nissan();
                              }));
                        },),//Nissan
                        BestCard(number: numbers[13],number2: numbers[13], ontap: (){
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
                                return const Chevrolet();
                              }));
                        },),//Chevrolet
                        BestCard(number: numbers[14],number2: numbers[14], ontap: (){
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
                                return const Bmw();
                              }));
                        },),//Bmw
                        BestCard(number: numbers[15],number2: numbers[15], ontap: (){
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
                                return const Jeep();
                              }));
                        },),//JEEP
                        BestCard(number: numbers[16],number2: numbers[16], ontap: (){
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
                                return const Kia();
                              }));
                        },) //KIA




                      ],
                    ),
                  ),// screen bmw
                  const SizedBox(height:20 ,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text('الاقسام',style:
                    TextStyle(color: Colors.black,fontFamily: 'ibmB',fontSize: 14 ), ),
                  ],),//نص الاقسام
                  const SizedBox(height:20 ,),
                  SectionCard(top1: 50, top2: 50,ontap1:(){
                    final Uri YOUTUBE=Uri.parse('https://youtube.com/playlist?list=PLDNwrSxH4fdUzwqY2rcicPxFowEooQk8k&si=FIT0uWAxSI9nRP8i');
                     launchUrl(YOUTUBE);
                  } ,
                      height1: 150, height2: 80,ontap2: (){
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration: const Duration(milliseconds: 600) ,
                            reverseTransitionDuration: const Duration(milliseconds: 400),
                            transitionsBuilder: (context,animation,secondaryAnimation,child)
                            {
                              final slideAnimation= Tween(begin: const Offset(2,0),end: const Offset(0,0)).animate(animation);
                              return SlideTransition(position: slideAnimation,child: child,);
                            },
                            pageBuilder: (context,animation,secondaryAnimation)
                            {
                              return const Traffic();
                            }));
                      },
                      left1: 97, left2:115,
                      txt1: 'تعلم القيادة', txt2: 'ارشادات المرور',
                      width1: 100, width2:100,
                      color1:const Color (0xffd4fcf1), color2: const Color(0xffffd4d4),
                      img1: 'Images/drive.png', img2: 'Images/traffic1-(1).png'),// تعلم القيادة
                  const SizedBox(height:10 ,),
                  SectionCard(top1: 50, top2: 45,ontap1: (){
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
                          return const Accessor();
                        }));
                  },
                      height1: 150, height2: 110,ontap2: (){
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
                              return const Directions();
                            }));
                      },
                      left1: 100, left2:100,
                      txt1: 'اكسسوارات للسيارات', txt2: 'الاتجاهات الارشادية',
                      width1: 100, width2:100,
                      color1:const Color (0xffbcf4ff), color2: const Color(0xffdfcef0),
                      img1: 'Images/accesories-.png', img2: 'Images/Road sign-pana.png'),//اتجاهات ارشادية
                  const SizedBox(height:10 ,),
                  SectionCard(top1: 40, top2: 40,ontap1: (){
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
                          return const PartsOfCars();
                        }));
                  },
                      height1: 150, height2: 80,ontap2: (){
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration:const Duration(milliseconds: 500) ,
                            reverseTransitionDuration: const Duration(milliseconds: 500),
                            transitionsBuilder: (context,animation,secondaryAnimation,child)
                            {
                              final slideAnimation= Tween(begin: const Offset(2,0),end: const Offset(0,0)).animate(animation);
                              return SlideTransition(position: slideAnimation,child: child,);
                            },
                            pageBuilder: (context,animation,secondaryAnimation)
                            {
                              return const Signals();
                            }));
                      },
                      left1: 120, left2:115,
                      txt1: 'اجزاء السيارة', txt2: 'اشارات تنظيمية',
                      width1: 100, width2:100,
                      color1:const Color (0xffdceadb), color2: const Color(0xffffffff),
                      img1: 'Images/Web search-cuate.png', img2: 'Images/On the way-pana.png'),//اشارات تنظيميه


                ],

              ),
            ),
          ),
        ],
      ),



    );
  }
}



