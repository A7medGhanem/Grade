import 'package:flutter/material.dart';

class FindText extends StatelessWidget {
  const FindText ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
Text('اكتشف مميزات سيارتك',
style: TextStyle(color: Colors.grey,fontFamily:'ibmR',fontSize: 14 ),),
],
);
  }
}
