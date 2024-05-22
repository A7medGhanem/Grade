import 'package:flutter/material.dart';

class Hyundia2020 extends StatefulWidget {
  const Hyundia2020({Key? key}) : super(key: key);

  @override
  State<Hyundia2020> createState() => _Hyundia2020State();
}

class _Hyundia2020State extends State<Hyundia2020> {
  final List<Map<String, String>> myitems = const [
    {
      'id': '1',
      'image': 'Images/key.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 100),

            ],
          ),
        ),
      ),
    );
  }
}
