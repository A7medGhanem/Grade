import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CardOne extends StatelessWidget {
  const CardOne({super.key,required this.image1,required this.text1,
    required this.image2,required this.text2,required this.color1,required this.color2,required this.HeightImage,
  required this .TopText,required this.LeftText, required this.Bottmimg, required this.Lftimg});
  final  String image1;
  final  String image2;
  final String text1;
  final String text2;
  final  Color color1;
  final Color color2;
  final double HeightImage;
   final double Bottmimg;
   final double Lftimg;
  final double TopText;
  final double LeftText;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(

        height: 150,
        width: 350,
        decoration:  BoxDecoration(image: DecorationImage(image: AssetImage(image1),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)) ,
        child: Stack(
          children: [
            Positioned(
             bottom: Bottmimg,left: Lftimg,height:HeightImage,
                child: Lottie.asset(image2),),
            Container(
              margin: EdgeInsets.only(top: TopText,left: LeftText,),
              child: Column(
                children: [
                  Text(text1,style: TextStyle(fontSize: 24,
                      fontFamily: 'ibmB',color: color1) ,),
                  Text(text2,style: TextStyle(fontSize: 24,
                      fontFamily: 'ibmB',color: color2) ,),
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}
