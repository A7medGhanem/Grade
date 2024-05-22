import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

class acceess extends StatelessWidget {
  const acceess({super.key, required this.img1, required this.img2, this.ontap1, this.ontap2});
final String img1,img2;
  final VoidCallback? ontap1,ontap2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap:ontap1,
            child: Card(
              elevation: 2,

              child: Container(
                width: 160,
                height: 160,

                child:

                CachedNetworkImage(
                  imageUrl:img1,
                  placeholder: (context, url) => Center(
                      child: SpinKitThreeInOut(
                        size: 30.0,
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
                    return Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider,
                            scale:8,
                            fit: BoxFit.fill ),
                      ),
                    );
                  },
                ),


              ),
            ),
          ),
        ),
        SizedBox(width:10,),
        Expanded(
          child: GestureDetector(
            onTap: ontap2,
            child: Card(
              elevation: 2,
              child: Container(
                width:160,
                height: 160,

                child: CachedNetworkImage(
                  imageUrl: img2,
                  placeholder: (context, url) => Center(
                      child: SpinKitThreeInOut(
                        size: 30.0,
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
                    return Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider,
                            scale:25,
                            fit: BoxFit.fill ),
                      ),
                    );
                  },
                ),),
            ),
          ),
        ),
      ],);
  }
}
