
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/models/BackBttn.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;




class Mini extends StatefulWidget {
  const Mini({super.key});

  @override
  State<Mini> createState() => _KiaState();
}

class _KiaState extends State<Mini> {
  String data='';
  fetchFileData() async{
    String responseText;
    responseText=await rootBundle.loadString('Text/kiaa.txt');
    setState(() {
      data=responseText;
    });
  }
@override
  void initState() {
    fetchFileData();
    super.initState();
     Connectivity().checkConnectivity();
  }

  @override
  Widget build(BuildContext context) {


    return Directionality(
       textDirection: TextDirection.rtl,
      child:
        StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            return Scaffold(
            
              body:snapshot.data ==ConnectivityResult.none? const Center(
               child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   Image(image:AssetImage('Images/No connection-pana.png')),
                   Text(" عفواً,انقطع اتصالك بالانترنت ! ",style: TextStyle(fontSize: 16,fontFamily: "ibmB"),)
                 ],
               )  ,
              ):
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column(
                  children: [
                     Row(children: [Back(color: Colors.black, ontap: () {  },)],),
                    const SizedBox(height: 25,),
                    SizedBox(
                      height: 150,
                        width: double.infinity,
                        child: CachedNetworkImage(
                          imageUrl: 'https://images.dealer.com/ddc/vehicles/2022/Mercedes-Benz/C-Class/Sedan/perspective/front-left/2022_20.png',


                        )
                    ),
                    Center(
                        child: Text(data,
                          style: const TextStyle(color: Colors.black,fontSize: 16,),)),
                  ],
                ),
              ],
            ),
              ),
            );
          }
        ),

    );
  }
}
