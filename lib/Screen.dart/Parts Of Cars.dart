import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PartsOfCars extends StatefulWidget {
  const PartsOfCars({super.key});

  @override
  State<PartsOfCars> createState() => _PartsOfCarsState();
}

class _PartsOfCarsState extends State<PartsOfCars> {
  final String video1 = "https://youtu.be/fPjOWekzeGI";
  late YoutubePlayerController _controller;
  bool isConnected = false;
  bool isDelayedActionExecuted = false;

  @override
  void initState() {
    super.initState();

    final id = YoutubePlayer.convertUrlToId(video1);
    _controller = YoutubePlayerController(
      initialVideoId: id!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    // Check the initial connectivity status
    Connectivity().checkConnectivity().then((result) {
      setState(() {
        isConnected = result != ConnectivityResult.none;
      });
    });

    // Listen to connectivity changes
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none && isConnected) {
        // Internet was connected and now it's disconnected
        Future.delayed(Duration(seconds: 20), () {
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
    _controller.dispose(); // Dispose the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white60,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: SizedBox(
                width: 80,
                child: Text(
                  ' ',
                  style: TextStyle(
                    fontFamily: 'ibmB',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
            ),
            body: isConnected
                ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                        onReady: () => debugPrint('Ready'),
                      ),
                    ],
                  ),
                ),
              ],
            )
                : Center(
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
      ),
    );
  }
}
