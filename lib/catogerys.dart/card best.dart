import 'package:flutter/material.dart';

import '../models/img.dart';



class BestCard extends StatelessWidget {
   const BestCard({super.key,required this.number,required this.number2, required this.ontap});
  final Pic number;
  final Pic number2;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:ontap ,
      child: Row(

        children: [
          Card(
            elevation: 0.5,
            child: Container(
              height: 45,
              width:75,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),  color: Colors.white,
                  image: DecorationImage(image: AssetImage(number.img),scale: number2.num)),
            ),
          ),
          const SizedBox(width: 11,),
        ],),
    );
  }
}
