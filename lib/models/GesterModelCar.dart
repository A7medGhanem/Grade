import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GestCarModel extends StatelessWidget {
  const GestCarModel({super.key, required this.img1, required this.txt1, required this.txt2});
 final String img1,txt1,txt2;
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0.0,
      shape:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffececec)),) ,
      clipBehavior:Clip.antiAliasWithSaveLayer,

      color: Colors.white,

      child: Column(
        children: [
          Container(

            height: 200,
            decoration: BoxDecoration(image: DecorationImage(image:
            CachedNetworkImageProvider(img1)
              ,fit: BoxFit.fill,
            ),   ),

          ),
          SizedBox(height:20 ,),
          Row(
            children: [
              SizedBox(width: 10,),
              Text(txt1,style: TextStyle(fontFamily: 'ibmB',fontSize: 17,color: Color(0xff1fa96b)),)
            ],
          ),
          SizedBox(height:2.5 ,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(txt2,
              style: TextStyle(color: Colors.grey,fontSize: 13,fontFamily: 'ibmR',),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,),
          ),
          SizedBox(height:10 ,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height:1,
              color:Color(0xffececec),

            ),
          ),
          Text('اضغط لـمعرفة تفاصيل السيارة ',style: TextStyle(color: Colors.black,fontFamily: 'ibmB',fontSize: 15),),
          SizedBox(height:25 ,),
        ],
      ),
    );
  }
}

