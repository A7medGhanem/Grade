import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'option more.dart';

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  final Uri whatsapp=Uri.parse('https://wa.me/+201067504527');
  final Uri facebook=Uri.parse('https://facebook.com/ahmed.ghanem.2018');
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            context: context, builder:(context) => Container(
            height: 190,
            width: double.infinity,
            child:Column(
              children: [
                const SizedBox(height: 20,),
                const Text('تواصل من خلال ',style: TextStyle(fontFamily: 'ibmB',fontSize: 16),),
                const SizedBox(height: 16,),
                OutlinedButton(onPressed: () {
                  launchUrl(whatsapp);
  },
                  child: const Text('واتساب',
                      style: TextStyle(color: Colors.white,
                          fontSize: 16,fontFamily: 'ibmB')),
                  style: OutlinedButton.styleFrom(minimumSize: const Size(320,50),
                    backgroundColor: const Color(0xff1c805e),
                    foregroundColor: Colors.white,

                  ),
                ),
                const SizedBox(height: 12,),
                OutlinedButton(onPressed: () {
                  launchUrl(facebook);
                },
                  child:
                  const Text('فيسبوك',
                      style: TextStyle(color: Color(0xff1c805e),
                          fontSize: 16,fontFamily: 'ibmB')),
                  style: OutlinedButton.styleFrom(minimumSize: const Size(320,50),
                      foregroundColor: Colors.grey,
                      side: const BorderSide(color: Color(0xff1c805e),)



                  ),
                ),

              ],
            ),
          ),),
      child: const SectionMore(
        CTxt1: Colors.orangeAccent,
        CTxt2: Colors.black,
        Text1: '',
        Text2: 'تواصل معنا',
        Img: 'Images/mail.png',
        width: 10,
        Max: 12,
      ),
    );
  }
}
