import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TrafficCard extends StatelessWidget {
  const TrafficCard({super.key, required this.img1, required this.img2, required this.txt1,
    required this.txt2, required this.rightimg1, required this.bottomimg1,
    required this.rightimg2, required this.bottomimg2, required this.toptxt1,
    required this.toptxt2, required this.righttxt1, required this.righttxt2,
    required this.color1, required this.color2, required this.scale1, required this.scale2});
  final String img1,img2,txt1,txt2;
  final double rightimg1,bottomimg1,rightimg2,bottomimg2,toptxt1,toptxt2,righttxt1,righttxt2,scale1,scale2;
  final Color color1,color2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            elevation: 1,
            child: Container(
              height: 150,      width: 150,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: color1),
              child: CachedNetworkImage(
                imageUrl: "${img1}",
                placeholder: (context, url) => Center(
                    child: SpinKitThreeInOut(
                  size: 25.0,
                  itemBuilder: (context, int index) {
                    return DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: index.isEven
                                ? const Color(0xff7a9ee6)
                                : Colors.orange));
                  },
                )),
                imageBuilder: (context, imageProvider) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: rightimg1, bottom: bottomimg1),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            scale: scale1,
                          ),
                        ),
                      ),
                      Container(
                          margin:
                              EdgeInsets.only(top: toptxt1, right: righttxt1),
                          child: Text(
                            txt1,
                            style: const TextStyle(fontFamily: 'ibmB'),
                          )),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            elevation: 1,
            child: Container(
              height: 150,      width: 150,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: color2),
              child: CachedNetworkImage(imageUrl:img2 ,
                placeholder:(context, url) => Center(child: SpinKitThreeInOut(
                  size:25.0 ,
                  itemBuilder: (context, int index) {
                    return DecoratedBox(decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25),
                        color: index.isEven?const Color(0xff7a9ee6):Colors.orange)
                    );
                  },
                )),
                imageBuilder: (context, imageProvider) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: rightimg2,bottom:bottomimg2),
                        decoration: BoxDecoration(image: DecorationImage(
                          image: imageProvider,scale: scale2,
                        ),),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: toptxt2,right:righttxt2),
                          child: Text(txt2,
                            style: const TextStyle(fontFamily: 'ibmB'),)),
                    ],
                  );
                },),
            ),
          ),
        ),
      ],
    );
  }
}
