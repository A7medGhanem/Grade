import 'package:flutter/material.dart';

import '../Screen.dart/Search Screen.dart';



class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,PageRouteBuilder(
            transitionDuration:const Duration(milliseconds: 500) ,
            reverseTransitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (context,animation,secondaryAnimation,child)
            {
              final slideAnimation= Tween(begin: const Offset(1,0),end: const Offset(0,0)).animate(animation);
              return SlideTransition(position: slideAnimation,child: child,);
            },
            pageBuilder: (context,animation,secondaryAnimation)
            {
              return const SearchScreen();
            }));
      },

      child: Container(
        height:50,
        width: 350,

        decoration: BoxDecoration(borderRadius:(BorderRadius.circular(10)),color: const Color(0xffffffff), ),
        child:
        GestureDetector(
          onTap: (){
            Navigator.push(context,PageRouteBuilder(
                transitionDuration:const Duration(milliseconds: 500) ,
                reverseTransitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder: (context,animation,secondaryAnimation,child)
                {
                  final slideAnimation= Tween(begin: const Offset(1,0),end: const Offset(0,0)).animate(animation);
                  return SlideTransition(position: slideAnimation,child: child,);
                },
                pageBuilder: (context,animation,secondaryAnimation)
                {
                  return const SearchScreen();
                }));},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('ابحث عن تفاصيل سيارتك ',style: TextStyle(color: Color(0xffabb5bf),fontSize: 14),),
              IconButton(icon:const ImageIcon(AssetImage('Images/search.png'),) ,onPressed: (){
                Navigator.push(context,PageRouteBuilder(
                    transitionDuration:const Duration(milliseconds: 500) ,
                    reverseTransitionDuration: const Duration(milliseconds: 500),

                    transitionsBuilder: (context,animation,secondaryAnimation,child)
                    {
                      final slideAnimation= Tween(begin: const Offset(1,0),end: const Offset(0,0)).animate(animation);
                      return SlideTransition(position: slideAnimation,child: child,);
                    },
                    pageBuilder: (context,animation,secondaryAnimation)
                    {
                      return const SearchScreen();
                    }));

              }),

            ],
          ),
        ),
      ),
    );
  }
}
