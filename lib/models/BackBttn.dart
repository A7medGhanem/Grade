import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  const Back({super.key,required this.color, required this.ontap});
 final  Color color;
 final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return       GestureDetector(
      onTap: ontap,
      child: BackButton(
        color: color,

      ),
    );
  }
}
