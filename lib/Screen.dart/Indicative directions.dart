import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/models/BackBttn.dart';
import 'package:cars/models/TrafficCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Directions extends StatefulWidget {
  const Directions({super.key});

  @override
  State<Directions> createState() => _DirectionsState();
}

class _DirectionsState extends State<Directions> {
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
  CollectionReference usersref = FirebaseFirestore.instance.collection("user1");

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
                width: 80,
                child: Text('',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          body: isConnected?StreamBuilder(
              stream: usersref.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return  Center(child: Image(image: AssetImage('Images/Error.png')));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: const CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  );
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
                                SizedBox(
                                  width: 10,
                                ),
                                Text('${snapshot.data!.docs[index]['name']}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'ibmB',
                                        color: Colors.blue)),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CachedNetworkImage(
                              imageUrl: "${snapshot.data!.docs[index]['image1']}",
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
                                        scale: 25,
                                        fit: BoxFit.fill),
                                  ),
                                );
                              },
                            ),
                            Row(
                              children: [
                                Text('${snapshot.data!.docs[index]['txt0']}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'ibmB',
                                        color: Colors.orangeAccent)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('${snapshot.data!.docs[index]['txt1']}',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'ibmR',
                                    color: Colors.black)),
                          ],
                        ),
                      );
                    },
                  );
                }
                return const Text('data is ready');
              }): Center(
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
