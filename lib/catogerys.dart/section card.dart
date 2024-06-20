import 'package:flutter/material.dart';


class SectionCard extends StatelessWidget {
  const SectionCard({super.key,required this.top1,required this.top2,
    required this.height1,required this.height2,
    required this.left1,required this.left2,required this.txt1,
    required this.txt2,required this.width1,required this.width2,required this.color1,required this.color2,
  required this.img1,required this .img2,required this.ontap1,required this.ontap2});
    final String txt1;
    final String txt2;
    final double top1;
    final double top2;
    final double left1;
   final double left2;
   final double height1;
   final double height2;
    final double width1;
  final double width2;
  final Color color1;
  final Color color2;
  final String img1;
  final String img2;
  final VoidCallback? ontap1;
  final VoidCallback? ontap2;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(

          child: GestureDetector(
            onTap: ontap1,
            child: Card(
              elevation: 3,
              child: Container(
                height: 95,
                width: 150,


                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:color1,),
                child: Stack(

                  children: [
                    Container(
                      margin:const EdgeInsets.only(right:70),
                      height: height1,
                      width: width1,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(img1))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: left1,top:top1),
                      child: Column(children: [
                        Text(txt1,style: const TextStyle(fontSize: 12.5,color: Colors.black,fontFamily: 'ibmB'),),
                      ],),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),
        const SizedBox(width:10 ,),
        Expanded(
          child:GestureDetector(
            onTap: ontap2,
            child: Card(
              elevation: 3,
              child: Container(
                height: 95,
                width: 150,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:color2,),
                child: Stack(
                  children: [
                    Container(
                      margin:const EdgeInsets.only(right:70),
                      height: height2,
                      width: width2,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(img2))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: left2,top:top2),
                      child: Column(children: [
                        Text(txt2,style: const TextStyle(fontSize: 12.5,color: Colors.black,fontFamily: 'ibmB'),),
                      ],),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),
      ],
    );
  }
}
