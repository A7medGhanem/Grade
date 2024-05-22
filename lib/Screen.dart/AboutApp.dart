import 'package:cars/models/BackBttn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  CollectionReference user = FirebaseFirestore.instance.collection("about");
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
            body:StreamBuilder(
                stream: user.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Image(image: AssetImage('Images/Error.png'));
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                        );
                  }
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.white70,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 10
                                          ),
                                          child: Text(
                                            'عن التطبيق',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19,
                                                fontFamily: 'ibmB'),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Back(color: Colors.black, ontap: () {  },),
                                          SizedBox(
                                            width: 110,
                                          ),


                                        ],
                                      ),
                                    ],
                                  ),
                                ),  //عن التطبيق

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text('${snapshot.data!.docs[index]['name']}',
                                        style: TextStyle(
                                    color: Color(0xff418a74),
                                    fontSize: 18,
                                    fontFamily: 'ibmB')),
                                  ],
                                ),
                                SizedBox(height: 10,),//تطبيق سيارتي
                                Text('${snapshot.data!.docs[index]['txt1']}',
                                    style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,wordSpacing: 1,
                                    fontFamily: 'ibmR')),//txt1
                                SizedBox(height: 10,),//تطبيق سيارتي
                                Row(
                                  children: [
                                    Text('${snapshot.data!.docs[index]['txt2']}',
                                        style: TextStyle(
                                            color:  Color(0xff418a74),
                                            fontSize: 19,
                                            fontFamily: 'ibmB')),
                                  ],
                                ),//txt2
                                SizedBox(height: 10,),
                                Text('${snapshot.data!.docs[index]['txt3']}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'ibmR',wordSpacing: 3)),//txt3
                                SizedBox(height: 10,),
                                Text('${snapshot.data!.docs[index]['txt4']}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'ibmR',wordSpacing: 3)),//txt4
                                SizedBox(height: 10,),
                                Text('${snapshot.data!.docs[index]['txt5']}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'ibmR',wordSpacing: 3)),//txt5
                                SizedBox(height: 10,),
                                Text('${snapshot.data!.docs[index]['txt6']}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'ibmR',wordSpacing: 1)),//txt6
                              ],
                            ),
                          );
                      },
                    );
                  }
                  return const Text('data is ready');
                }),
      ),
    );
  }
}
