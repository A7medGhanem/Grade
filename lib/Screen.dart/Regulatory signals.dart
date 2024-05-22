import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/models/BackBttn.dart';
import 'package:cars/models/RegulatoryCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Signals extends StatefulWidget {
  const Signals({super.key});

  @override
  State<Signals> createState() => _SignalsState();
}

class _SignalsState extends State<Signals> {
  CollectionReference user = FirebaseFirestore.instance.collection("user2");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 120,
                child: Text('الاشارات التنظيمية',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          body: StreamBuilder(
              stream: user.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Image(image: AssetImage('Images/Error.png'));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.green,
                  ));
                }
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                         //icon back
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('${snapshot.data!.docs[index]['name']}',
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'ibmB',
                                        color: Colors.blue)),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CachedNetworkImage(
                              imageUrl: "${snapshot.data!.docs[index]['image0']}",
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
                                        scale: 5,
                                        fit: BoxFit.fill),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Text('${snapshot.data!.docs[index]['txt0']}',
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'ibmB',
                                        color: Colors.orangeAccent)),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('${snapshot.data!.docs[index]['txt1']}',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'ibmR',
                                    color: Colors.black)),
                            Text('${snapshot.data!.docs[index]['txt2']}',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'ibmR',
                                    color: Colors.black)),
                            Text('${snapshot.data!.docs[index]['txt3']}',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'ibmR',
                                    color: Colors.black)),
                            const SizedBox(
                              height: 10,
                            ),
                            RegulatoryCard(img1: "${snapshot.data!.docs[index]['image1']}", img2: "${snapshot.data!.docs[index]['image2']}",
                                txtimg1: '${snapshot.data!.docs[index]['txtimage1']}', txtimg2: '${snapshot.data!.docs[index]['txtimage2']}',
                                bottomimg1: 35, bottomimg2: 35,
                                rightimg1: 1, rightimg2: 1,
                                toptxt1: 100, toptxt2: 100,
                                righttxt1: 40, righttxt2: 65,
                                scale1: 15, scale2: 8),
                            const SizedBox(
                              height: 5,
                            ),
                            RegulatoryCard(img1: "${snapshot.data!.docs[index]['image3']}", img2: "${snapshot.data!.docs[index]['image4']}",
                                txtimg1: '${snapshot.data!.docs[index]['txtimage3']}', txtimg2: '${snapshot.data!.docs[index]['txtimage4']}',
                                bottomimg1: 35, bottomimg2: 35,
                                rightimg1: 1, rightimg2: 1,
                                toptxt1: 100, toptxt2: 100,
                                righttxt1: 40, righttxt2: 30,
                                scale1: 29, scale2: 15),
                            const SizedBox(
                              height: 5,
                            ),
                            RegulatoryCard(img1: "${snapshot.data!.docs[index]['image5']}", img2: "${snapshot.data!.docs[index]['image6']}",
                                txtimg1: '${snapshot.data!.docs[index]['txtimage5']}', txtimg2: '${snapshot.data!.docs[index]['txtimage6']}',
                                bottomimg1: 35, bottomimg2: 35,
                                rightimg1: 1, rightimg2: 1,
                                toptxt1: 100, toptxt2: 100,
                                righttxt1: 30, righttxt2: 30,
                                scale1: 16, scale2: 14),

                          ],
                        ),
                      );
                    },
                  );
                }
                return const Text('data is ready');
              }),
        ),
      ),
    );
  }
}
