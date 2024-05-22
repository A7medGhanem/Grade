import 'package:cars/models/BackBttn.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';

class Notifiy extends StatefulWidget {
  const Notifiy({super.key});

  @override
  State<Notifiy> createState() => _NotifiyState();
}

class _NotifiyState extends State<Notifiy> {
  String? MyToken;

  getToken() async {
    MyToken = await FirebaseMessaging.instance.getToken();
    print(MyToken);
setState(() {
 print(MyToken);
});

  }


  @override
  void initState() {
    getToken();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Back(color: Colors.orange, ontap: () {  },),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      'الاشعارات',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'ibmB'),
                    ),
                  ],
                ),
              ),
              Center(child:
              SelectableText ("${MyToken}")),
            ],
          ),
        ),
      ),
    );
  }
}
