import 'package:flutter/material.dart';

class SectionMore extends StatelessWidget {
  const SectionMore({super.key, required this.CTxt1,
    required this.CTxt2, required this.Text1,
    required this.Text2, required this.Img,
    required this.width, required this.Max, this.ontap, });
final Color CTxt1;
final Color CTxt2;
final String Text1;
final String Text2;
final String Img;
final double width;
  final double Max;
final VoidCallback? ontap;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width:350,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
      child: GestureDetector(
        onTap: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
              Text(Text1,style: TextStyle(color: CTxt1,fontSize: 14,fontFamily: 'ibmB',),),

            const SizedBox(width: 190,),
            Text(Text2 ,
              style: TextStyle(fontSize:16,fontFamily: 'ibmB',color:CTxt2),),
            SizedBox(width: width,),
            CircleAvatar(backgroundImage:
            AssetImage(Img),
              backgroundColor: const Color(0xfff7f9fd),maxRadius: Max,),
    ],),
      ),
    );
  }
}
