import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [

        Container(
          height:45 ,
          width:double.infinity,

          child:
              const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Image(image: AssetImage('Images/hand.png'),height: 30,),
                Text('مرحباً بعودتــك',
                  style: TextStyle(color: Color(0xff398168),fontFamily:'ibmB',fontSize: 25 ),),

              ],),

        ),
        Positioned(

            left:-20,
           top: -45,
            child: Container(child: Lottie.asset('Assets Josn/Eid.json',height:120,),)),

      ],
    );
  }
}
