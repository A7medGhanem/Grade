 import 'package:cars/Screen.dart/Indicative%20directions.dart';
import 'package:cars/Screen.dart/Learn%20to%20drive.dart';
import 'package:cars/Screen.dart/Regulatory%20signals.dart';
import 'package:cars/Screen.dart/Traffic%20instructions.dart';
import 'package:cars/Screens%20Of%20Cars/Hyundai.dart';
import 'package:cars/Screens%20Of%20Cars/KIA.dart';
import 'package:cars/Screens%20Of%20Cars/Mini.dart';
import 'package:flutter/material.dart';

import '../Screen.dart/accessories.dart';

class App{
  final String Items;
        final Widget Screens;
        final String images;
  const App({required this.Items,required this.Screens,required this.images});
 }

 const allitems=[
   App(Items: 'Mini', Screens: Mini(),images: 'Images/MINI_logo_PNG2.png'),
   App(Items: 'Hyundia', Screens: Hyundai(),images: 'Images/Hyundai_logo_PNG2.png'),
   App(Items: 'Kia', Screens: Kia(),images: 'Images/Kia.png'),
   App(Items: 'ارشادات المرور', Screens: Traffic(),images: 'Images/traffic1-(1).png'),
   App(Items: 'الاتجاهات الارشادية', Screens: Directions(),images: 'Images/Road sign-pana.png'),
   App(Items: 'تعلم القيادة', Screens:  Drive(),images: 'Images/drive.png'),
   App(Items: 'اشارات تنظيمية', Screens:  Signals(),images: 'Images/On the way-pana.png'),
   App(Items: 'اكسسوارات السيارة', Screens: Accessor(),images: 'Images/accesories-.png'),
 ];