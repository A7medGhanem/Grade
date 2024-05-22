import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RegulatoryCard extends StatelessWidget {
  const RegulatoryCard({super.key, required this.img1, required this.img2,
    required this.txtimg1, required this.txtimg2, required this.bottomimg1,
    required this.bottomimg2, required this.rightimg1, required this.rightimg2,
    required this.toptxt1, required this.toptxt2, required this.righttxt1, required this.righttxt2,
    required this.scale1, required this.scale2});
final String img1,img2,txtimg1,txtimg2;
final double bottomimg1,bottomimg2,scale1,scale2,rightimg1,rightimg2,toptxt1,toptxt2,righttxt1,righttxt2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: Colors.red,
            elevation: 2,
            child: SizedBox(
              height: 150,
              width: 120,
              child: Container(
                color: Colors.white70,
                child: CachedNetworkImage(
                  imageUrl:
                  img1,
                  placeholder: (context, url) => Center(
                      child: SpinKitThreeInOut(
                        size: 25.0,
                        itemBuilder: (context, int index) {
                          return DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25),
                                  color: index.isEven
                                      ? const Color(
                                      0xff7a9ee6)
                                      : Colors.orange));
                        },
                      )),
                  imageBuilder: (context, imageProvider) {
                    return Stack(
                      children: [
                        Container(
                          margin:  EdgeInsets.only(
                              right: rightimg1, bottom: bottomimg1),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              scale: scale1,
                            ),
                          ),
                        ),
                        Container(
                            margin:  EdgeInsets.only(
                                top:toptxt1, right: righttxt1),
                            child: Text(
                              txtimg1,
                              style: const TextStyle(
                                  fontFamily: 'ibmB'),
                            )),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            elevation: 2,
            color: Colors.red,
            child: SizedBox(
              height: 150,
              width: 120,
              child: Container(
                color: Colors.white70,
                child: CachedNetworkImage(
                  imageUrl:
                  img2,
                  placeholder: (context, url) => Center(
                      child: SpinKitThreeInOut(
                        size: 25.0,
                        itemBuilder: (context, int index) {
                          return DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25),
                                  color: index.isEven
                                      ? const Color(
                                      0xff7a9ee6)
                                      : Colors.orange));
                        },
                      )),
                  imageBuilder: (context, imageProvider) {
                    return Stack(
                      children: [
                        Container(
                          margin:  EdgeInsets.only(
                              right: rightimg2, bottom: bottomimg2),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              scale: scale2,
                            ),
                          ),
                        ),
                        Container(
                            margin:  EdgeInsets.only(
                                top: toptxt2, right:righttxt2),
                            child: Text(
                              txtimg2,
                              style: const TextStyle(
                                  fontFamily: 'ibmB'),
                            )),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
