import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/models/Cars.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Kia2017 extends StatefulWidget {
  const Kia2017({super.key});

  @override
  State<Kia2017> createState() => _Kia2017State();
}

class _Kia2017State extends State<Kia2017> {
  CollectionReference user = FirebaseFirestore.instance.collection("Kia2017");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar:  AppBar(
        
            backgroundColor: Colors.deepOrangeAccent,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 80,
                child: Text('انواع السيارات',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
        
          ),
          body: StreamBuilder(
              stream: user.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Image(image: AssetImage('Images/Error.png'));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return  Center(
                      child: CircularProgressIndicator(
        
                        color: Colors.green,
                      ));
                }
                if (snapshot.hasData) {
        
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      return  Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(

                                  height: 270,
                                  width: 384,

                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  CachedNetworkImageProvider('${snapshot.data!.docs[index]['img1']}'),
                                      fit:BoxFit.fill )),
                                  child: Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top:190),
                                        height: 50,
                                        width: 80,
                                        color: Color(0xff399679),
                                        child: Column(
                                          children: [
                                            Text('قم',style: TextStyle(color: Colors.white,fontFamily: 'ibmB'),),
                                            Row(
                                              children: [
                                                Text('  بالسحب',style: TextStyle(color: Colors.yellow,fontFamily: 'ibmB'),),
                                                SizedBox(width: 5,),
                                                Icon(Icons.double_arrow_outlined,color: Colors.white,size: 15,)
                                              ],
                                            ),

                                          ],
                                        ),
                                      )//قم بالسحب
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10.0,),//img1
                                Container(
                                  height: 270,
                                  width: 384,

                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  CachedNetworkImageProvider('${snapshot.data!.docs[index]['img2']}'),
                                      fit:BoxFit.fill )),
                                ),
                                SizedBox(width: 10.0,),//img2
                                Container(
                                  height: 270,
                                  width: 384,

                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  CachedNetworkImageProvider('${snapshot.data!.docs[index]['img3']}'),
                                      fit:BoxFit.fill )),
                                ),
                                SizedBox(width: 10.0,),//img3
                                Container(
                                  height: 270,
                                  width: 384,

                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  CachedNetworkImageProvider('${snapshot.data!.docs[index]['img4']}'),
                                      fit:BoxFit.fill )),
                                ),
                                SizedBox(width: 10.0,),//img3
                                Container(
                                  height: 270,
                                  width: 384,

                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  CachedNetworkImageProvider('${snapshot.data!.docs[index]['img5']}'),
                                      fit:BoxFit.fill )),
                                ),
                                SizedBox(width: 10.0,),//img3
                                Container(
                                  height: 270,
                                  width: 384,

                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  CachedNetworkImageProvider('${snapshot.data!.docs[index]['img6']}'),
                                      fit:BoxFit.fill )),
                                ),
                                SizedBox(width: 10.0,),//img3
                                Container(
                                  height: 270,
                                  width: 384,

                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  CachedNetworkImageProvider('${snapshot.data!.docs[index]['img7']}'),
                                      fit:BoxFit.fill )),
                                ),
                                SizedBox(width: 10.0,),//img3
                                Container(
                                  height: 270,
                                  width: 384,

                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  CachedNetworkImageProvider('${snapshot.data!.docs[index]['img8']}'),
                                      fit:BoxFit.fill )),
                                ),//img4
                              ],
                            ),// الصور
                          ),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              Container(
                                  height: 25,
                                  width: 50,
                                  child: CachedNetworkImage(imageUrl: 'https://icons.veryicon.com/png/o/system/qianxun-cooperative-transportation-system/authentication-54.png')),
                              Text('نبذة',style:
                              TextStyle(fontSize: 18,fontFamily: 'ibmB'),),

                            ],
                          ),//نبذة
                          Cars(txt1: 'txt1', txt2: 'txt2',
                              txt3: 'txt3', txt4: 'txt4',
                              txt5: 'txt5', txt6:' txt6',
                              txt7: 'txt7', txt8: 'txt8',
                              txt9: 'txt9', txt10:' txt10',
                              txt11: 'txt11',
                              kind1: 'kind1', kind2: 'kind2',
                              kind3: 'kind3', kind4: 'kind4',
                              kind5:' kind5', kind6: 'kind6',
                              kind7:' kind7', kind8: 'kind8',
                              kind9: 'kind9', kind10: 'kind10',
                              kind11:' kind11', kind12: 'kind12',
                              kind13: 'kind13', kind14: 'kind14',
                              kind15: 'kind15', kind16: 'kind16',
                              save1: 'save1', save2: 'save2',
                              save3: 'save3', save4:' save4',
                              save5: 'save5', save6: 'save6',
                              relax1: 'relax1', relax2: 'relax2',
                              relax3: 'relax3', relax4: 'relax4',
                              relax5: 'relax5', relax6: 'relax6',
                              relax7: 'relax7', relax8: 'relax8',
                              relax9: 'xrela9', relax10: 'relax10',
                              img1: '${snapshot.data!.docs[index]['img1']}', img2: '${snapshot.data!.docs[index]['img1']}',
                              img3: '${snapshot.data!.docs[index]['img1']}', img4: '${snapshot.data!.docs[index]['img1']}',
                              img5: '${snapshot.data!.docs[index]['img1']}', img6: '${snapshot.data!.docs[index]['img1']}',
                              img7:'${snapshot.data!.docs[index]['img1']}', img8: '${snapshot.data!.docs[index]['img1']}',
                              img9: '${snapshot.data!.docs[index]['img1']}', color: Colors.red),
                        ],
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
