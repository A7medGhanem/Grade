import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PartsOfCars extends StatefulWidget {
  const PartsOfCars({super.key});

  @override
  State<PartsOfCars> createState() => _PartsOfCarsState();
}

class _PartsOfCarsState extends State<PartsOfCars> {

  final video1="https://youtu.be/fPjOWekzeGI";
  late YoutubePlayerController _controller;
  bool isConnected = false;


  @override
  void initState() {
    super.initState();


    final id=YoutubePlayer.convertUrlToId(video1);
    _controller=YoutubePlayerController(initialVideoId: id!,flags: const YoutubePlayerFlags(autoPlay: false));

  }



  @override

  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 80,
                child: Text(' ',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          body:  ListView(
            children: [
              Column(
                children: [
                YoutubePlayer(controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () => debugPrint('Ready'),),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
class url {
 String videourl;
  url({required this.videourl});

}