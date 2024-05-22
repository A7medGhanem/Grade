import 'dart:ffi';

import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
  const Developer({super.key,required this.Bottomtxt,required this.Toptxt,required this.Img,required this.left, required this.fonsize});
final String Toptxt;
final String Bottomtxt;
 final String Img;
final double left;
final double fonsize;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 60,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffe7eff2),
          ),
          child: Stack(
            children: [
              Container(
                  margin: const EdgeInsets.only(
                      top: 5, left: 300),
                  child: CircleAvatar(
                      backgroundImage: AssetImage(
                         Img),
                      maxRadius: 25)),
              Container(
                  margin: const EdgeInsets.only(
                      top: 15, left: 80),
                  child: Text(
                    Toptxt,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: fonsize),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: 35, left:left),
                  child: Text(
                   Bottomtxt,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
