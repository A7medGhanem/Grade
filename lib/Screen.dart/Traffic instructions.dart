import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/models/BackBttn.dart';
import 'package:cars/models/TrafficCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Traffic extends StatefulWidget {
  const Traffic({super.key});

  @override
  State<Traffic> createState() => _TrafficState();
}

class _TrafficState extends State<Traffic> {
  bool isConnected = false;
  bool isDelayedActionExecuted = false;
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    Connectivity().checkConnectivity().then((result) {
      setState(() {
        isConnected = result != ConnectivityResult.none;
      });
    });

    // Listen to connectivity changes
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none && isConnected) {
        // Internet was connected and now it's disconnected
        Future.delayed(Duration(seconds: 10), () {
          if (mounted && !isDelayedActionExecuted) {
            setState(() {
              isConnected = false; // Update UI if needed
              isDelayedActionExecuted = true; // Prevent repeated execution
              // Add your code here to execute after 15 seconds of disconnection
              debugPrint('Delayed action executed after internet disconnection.');
            });
          }
        });
      } else {
        // Internet is connected
        setState(() {
          isConnected = true; // Update UI if needed
          isDelayedActionExecuted = false; // Reset delayed action flag
        });
      }
    });
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    super.dispose();
  }

  CollectionReference usersref = FirebaseFirestore.instance.collection("users");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff399679),
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 80,
                child: Text('ارشادات المرور',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          body:isConnected ?StreamBuilder(
            stream: usersref.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError)
              {return Center(child:  Image(image: AssetImage('Images/Error.png')));}
              if(snapshot.connectionState==ConnectionState.waiting)
              {return Center(child: CircularProgressIndicator(color: Colors.green,));}
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                         //icon back
                          const SizedBox(height: 20,),
                          SizedBox(
                              height: 250,
                              width: double.infinity,

                              child: CachedNetworkImage(
                                imageUrl:
                                    "${snapshot.data!.docs[index]['image1']}",
                                placeholder: (context, url) => Center(
                                    child: SpinKitThreeInOut(
                                  size: 30.0,
                                  itemBuilder: (context, int index) {
                                    return DecoratedBox(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: index.isEven
                                                ? const Color(0xff7a9ee6)
                                                : Colors.orange));
                                  },
                                )),
                                imageBuilder: (context, imageProvider) {
                                  return Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: imageProvider,
                                          scale: 20,
                                          fit: BoxFit.fill),
                                    ),
                                  );
                                },
                              ),),

                          Text("${snapshot.data!.docs[index]['txt']}",style: const TextStyle(fontFamily: 'ibmR',
                              fontSize: 18,letterSpacing: 0.4),),//اولا
                            const SizedBox(height: 15,),
                          Text("${snapshot.data!.docs[index]['txt2']}",style: const TextStyle(fontFamily: 'ibmB',
                              fontSize: 18,color: Colors.orange,),),//ثانيا
                          Text("${snapshot.data!.docs[index]['txt3']}",style: const TextStyle(fontFamily: 'ibmR',
                              fontSize: 18,color: Colors.black),),//بوجه عام
                         const SizedBox(height:15 ,),
                          TrafficCard(img1:"${snapshot.data!.docs[index]['image 0']}", img2: "${snapshot.data!.docs[index]['image2']}",
                              txt1: '${snapshot.data!.docs[index]['txtimage0']}', txt2: '${snapshot.data!.docs[index]['txtimage2']}',
                              scale1:12 ,scale2:15 ,
                              rightimg1: 0, bottomimg1: 50,
                              rightimg2: 0, bottomimg2: 50,
                              toptxt1: 100,  righttxt1: 10,
                              toptxt2: 100, righttxt2: 10,
                              color1: Colors.white70, color2: Colors.white70),
                          const SizedBox(height: 10,),
                          TrafficCard(img1:"${snapshot.data!.docs[index]['image3']}", img2: "${snapshot.data!.docs[index]['image4']}",
                              txt1: '${snapshot.data!.docs[index]['txtimage3']}', txt2: '${snapshot.data!.docs[index]['txtimage4']}',
                              scale1:12 ,scale2:15 ,
                              rightimg1: 0, bottomimg1: 50,
                              rightimg2: 0, bottomimg2: 50,
                              toptxt1: 100,  righttxt1: 25,
                              toptxt2: 100, righttxt2: 25,
                              color1: Colors.white70, color2: Colors.white70),
                          const SizedBox(height: 10,),
                          TrafficCard(img1:"${snapshot.data!.docs[index]['image5']}", img2: "${snapshot.data!.docs[index]['image6']}",
                              txt1: '${snapshot.data!.docs[index]['txtimage5']}', txt2: '${snapshot.data!.docs[index]['txtimage6']}',
                              scale1:15 ,scale2:15 ,
                              rightimg1: 0, bottomimg1: 50,
                              rightimg2: 0, bottomimg2: 50,
                              toptxt1: 100,  righttxt1: 25,
                              toptxt2: 100, righttxt2: 10,
                              color1: Colors.white70, color2: Colors.white70),
                          const SizedBox(height: 10,),
                          TrafficCard(img1:"${snapshot.data!.docs[index]['image7']}", img2: "${snapshot.data!.docs[index]['image8']}",
                              txt1: '${snapshot.data!.docs[index]['txtimage7']}', txt2: '${snapshot.data!.docs[index]['txtimage8']}',
                              scale1:15 ,scale2:15 ,
                              rightimg1: 0, bottomimg1: 50,
                              rightimg2: 0, bottomimg2: 50,
                              toptxt1: 100,  righttxt1:40,
                              toptxt2: 100, righttxt2: 10,
                              color1: Colors.white70, color2: Colors.white70),
                          const SizedBox(height: 10,),
                          TrafficCard(img1:"${snapshot.data!.docs[index]['image9']}", img2: "${snapshot.data!.docs[index]['image10']}",
                              txt1: '${snapshot.data!.docs[index]['txtimage9']}', txt2: '${snapshot.data!.docs[index]['txtimage10']}',
                              scale1:30 ,scale2:15 ,
                              rightimg1: 0, bottomimg1: 50,
                              rightimg2: 0, bottomimg2: 50,
                              toptxt1: 100,  righttxt1:20,
                              toptxt2: 100, righttxt2: 25,
                              color1: Colors.white70, color2: Colors.white70),


                        ],
                      ),

                    ) ;
                  },);
              }
              return const Text('data is ready');
            }
          ):Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 250),
                Text(
                  'لا يوجد اتصال بالإنترنت',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'IBMB',
                    color: Colors.black,
                  ),
                ),

                Column(
                  children: [
                    SizedBox(height: 300,),
                    Text(
                      'يرجى التأكد من اتصالك بالإنترنت',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'IBMR',
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'ومن ثم حاول مرة أخرى',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'IBMR',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


