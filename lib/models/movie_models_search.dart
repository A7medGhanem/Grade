 import 'package:cars/Screen.dart/Indicative%20directions.dart';
import 'package:cars/Screen.dart/Learn%20to%20drive.dart';
import 'package:cars/Screen.dart/Regulatory%20signals.dart';
import 'package:cars/Screen.dart/Traffic%20instructions.dart';
import 'package:cars/Screens%20Of%20Cars/BMW.dart';
import 'package:cars/Screens%20Of%20Cars/Chevrolet.dart';
import 'package:cars/Screens%20Of%20Cars/Foton.dart';
import 'package:cars/Screens%20Of%20Cars/GacGroup.dart';
import 'package:cars/Screens%20Of%20Cars/Haval.dart';
import 'package:cars/Screens%20Of%20Cars/Hyundai.dart';
import 'package:cars/Screens%20Of%20Cars/KIA.dart';
import 'package:cars/Screens%20Of%20Cars/Land_Rover.dart';
import 'package:cars/Screens%20Of%20Cars/Mercedes.dart';
import 'package:cars/Screens%20Of%20Cars/Mini.dart';
import 'package:cars/Screens%20Of%20Cars/Mitsubishi.dart';
import 'package:cars/Screens%20Of%20Cars/Nissan.dart';
import 'package:cars/Screens%20Of%20Cars/Soueast.dart';
import 'package:cars/Screens%20Of%20Cars/Toyota.dart';
import 'package:cars/Screens%20Of%20Cars/Volvo.dart';
import 'package:cars/Screens%20Of%20Cars/ssang%20young.dart';
import 'package:flutter/material.dart';

import '../Screen.dart/accessories.dart';
import '../Screens Of Cars/Jeep.dart';

class App{
  final String Items;
        final Widget Screens;
        final String images;
  const App({required this.Items,required this.Screens,required this.images});
 }

 const allitems=[
   App(Items: 'Jeep', Screens: Jeep(),images: 'Images/Jeep_logo_PNG2.png'),
   App(Items: 'BMW', Screens: Bmw(),images: 'Images/BMW_logo_PNG1.png'),
   App(Items: 'Chevrolet', Screens: Chevrolet(),images: 'Images/Chevrolet_logo_PNG3.png'),
   App(Items: 'Gac Group', Screens: Gac(),images: 'Images/GAC-Group-logo.png'),
   App(Items: 'Haval', Screens: Haval(),images: 'Images/Haval_logo_PNG3.png'),
   App(Items: 'Foton', Screens: Foton(),images: 'Images/Foton_logo_PNG12.png'),
   App(Items: 'Land Rover', Screens: LandRover(),images: 'Images/Land_Rover_logo_PNG19.png'),
   App(Items: 'Mercedes', Screens: Mercedes(),images: 'Images/Mercedes_logo_PNG19.png'),
   App(Items: 'Mitsubishi', Screens: Mitsubishi(),images: 'Images/Mitsubishi_logo_PNG5.png'),
   App(Items: 'Nissan', Screens: Nissan(),images: 'Images/Nissan_logo_PNG1.png'),
   App(Items: 'Mini', Screens: Mini(),images: 'Images/MINI_logo_PNG2.png'),
   App(Items: 'Southeast', Screens: Soueast(),images: 'Images/Soueast-logo-768x529.png'),
   App(Items: 'Toyota', Screens: Toyota(),images: 'Images/Toyota_logo_PNG15.png'),
   App(Items: 'SSang Young', Screens: Ssang(),images: 'Images/SsangYong.png'),
   App(Items: 'Volvo', Screens: Volvo(),images: 'Images/Volvo_logo_PNG6.png'),
   App(Items: 'Hyundia', Screens: Hyundai(),images: 'Images/Hyundai_logo_PNG2.png'),
   App(Items: 'Kia', Screens: Kia(),images: 'Images/Kia.png'),
   App(Items: 'ارشادات المرور', Screens: Traffic(),images: 'Images/traffic1-(1).png'),
   App(Items: 'الاتجاهات الارشادية', Screens: Directions(),images: 'Images/Road sign-pana.png'),
   App(Items: 'تعلم القيادة', Screens:  Drive(),images: 'Images/drive.png'),
   App(Items: 'اشارات تنظيمية', Screens:  Signals(),images: 'Images/On the way-pana.png'),
   App(Items: 'اكسسوارات السيارة', Screens: Accessor(),images: 'Images/accesories-.png'),
 ];