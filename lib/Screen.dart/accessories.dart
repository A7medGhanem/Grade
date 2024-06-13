import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/catogerys.dart/accessoires.dart';
import 'package:cars/models/BackBttn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

class Accessor extends StatefulWidget {
  const Accessor({super.key});

  @override
  State<Accessor> createState() => _AccessorState();
}

class _AccessorState extends State<Accessor> {
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
  CollectionReference usersref = FirebaseFirestore.instance.collection("accessories");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff399679),
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 120,
                child: Text('اكسسوارات السيارات',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          backgroundColor: const Color(0xfff7f9fd),
          body:isConnected? StreamBuilder(
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
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [


                              acceess(img1:  "${snapshot.data!.docs[index]['img1']}",
                                  img2:  "${snapshot.data!.docs[index]['img2']}",ontap1:  () {
                                  final Uri one=Uri.parse('https://www.amazon.eg/b/?_encoding=UTF8&node=21805840031&bbn=18017874031&ref_=Oct_d_odnav_d_21805227031_4&pd_rd_w=zpW9i&content-id=amzn1.sym.5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_p=5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_r=7M45MEAJ71ECKAK40645&pd_rd_wg=GROK4&pd_rd_r=84cde459-8dfe-4144-a8f6-3a97531e1784');
                                  launchUrl(one);
                                },ontap2:  () {
                                  final Uri two=Uri.parse('https://www.amazon.eg/b/?_encoding=UTF8&node=21805843031&bbn=18017874031&ref_=Oct_d_odnav_d_21805227031_3&pd_rd_w=zpW9i&content-id=amzn1.sym.5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_p=5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_r=7M45MEAJ71ECKAK40645&pd_rd_wg=GROK4&pd_rd_r=84cde459-8dfe-4144-a8f6-3a97531e1784');
                                  launchUrl(two);
                                },),
                            SizedBox(height: 15,),
                            acceess(img1:  "${snapshot.data!.docs[index]['img3']}",
                                img2:  "${snapshot.data!.docs[index]['img4']}",
                              ontap1: () {
                                final Uri three=Uri.parse('https://www.amazon.eg/b/?_encoding=UTF8&node=49988658031&bbn=18017874031&ref_=Oct_d_odnav_d_21805227031_5&pd_rd_w=zpW9i&content-id=amzn1.sym.5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_p=5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_r=7M45MEAJ71ECKAK40645&pd_rd_wg=GROK4&pd_rd_r=84cde459-8dfe-4144-a8f6-3a97531e1784');
                                launchUrl(three);
                              },ontap2: () {
                                final Uri four=Uri.parse('https://www.amazon.eg/b/?_encoding=UTF8&node=21805834031&bbn=18017874031&ref_=Oct_d_odnav_d_21805227031_0&pd_rd_w=zpW9i&content-id=amzn1.sym.5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_p=5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_r=7M45MEAJ71ECKAK40645&pd_rd_wg=GROK4&pd_rd_r=84cde459-8dfe-4144-a8f6-3a97531e1784');
                                launchUrl(four);
                              },),
                            SizedBox(height: 15,),
                            acceess(img1:  "${snapshot.data!.docs[index]['img5']}",
                                img2:  "${snapshot.data!.docs[index]['img6']}",
                            ontap1: () {
                              final Uri four=Uri.parse('https://www.amazon.eg/b/?_encoding=UTF8&node=21805833031&bbn=18017874031&ref_=Oct_d_odnav_d_21805227031_1&pd_rd_w=zpW9i&content-id=amzn1.sym.5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_p=5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_r=7M45MEAJ71ECKAK40645&pd_rd_wg=GROK4&pd_rd_r=84cde459-8dfe-4144-a8f6-3a97531e1784');
                              launchUrl(four);
                            },ontap2:
                              () {
                                final Uri six=Uri.parse('https://www.amazon.eg/b/?_encoding=UTF8&node=21805839031&bbn=18017874031&ref_=Oct_d_odnav_d_21805227031_2&pd_rd_w=zpW9i&content-id=amzn1.sym.5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_p=5b4c6558-fdbc-4763-ae8d-86a308408195&pf_rd_r=7M45MEAJ71ECKAK40645&pd_rd_wg=GROK4&pd_rd_r=84cde459-8dfe-4144-a8f6-3a97531e1784');
                                launchUrl(six);
                              },)
                          ],
                        ),
                      );
                    },);
                }
                return const Text('data is ready');
              }
          ): Center(
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
