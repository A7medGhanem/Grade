import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Cars extends StatelessWidget {
  const Cars({super.key, required this.txt1, required this.txt2, required this.txt3,
    required this.txt4, required this.txt5, required this.txt6, required this.txt7,
    required this.txt8, required this.txt9, required this.txt10, required this.txt11,
    required this.kind1, required this.kind2, required this.kind3, required this.kind4,
    required this.kind5, required this.kind6, required this.kind7, required this.kind8,
    required this.kind9, required this.kind10, required this.kind11, required this.kind12,
    required this.kind13, required this.kind14, required this.kind15,required this.kind16, required this.save1,
    required this.save2, required this.save3, required this.save4, required this.save5,
    required this.save6, required this.relax1, required this.relax2, required this.relax3,
    required this.relax4, required this.relax5, required this.relax6, required this.relax7,
    required this.relax8, required this.relax9, required this.relax10,
    required this.img1, required this.img2, required this.img3, required this.img4,
    required this.img5, required this.img6, required this.img7, required this.img8, required this.img9, required this.color, });
  final String txt1,txt2,txt3,txt4,txt5,txt6,txt7,txt8,txt9,txt10,txt11;
  final  String kind1,kind2,kind3,kind4,kind5,kind6,kind7,kind8,kind9,kind10,
      kind11,kind12,kind13,kind14,kind15,kind16;
  final String save1,save2,save3,save4,save5,save6;
  final String relax1,relax2,relax3,relax4,relax5,relax6,relax7,relax8,relax9,relax10;
  final String img1,img2,img3,img4,img5,img6,img7,img8,img9;
  final Color color;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [


          Text(txt1,
            style: TextStyle(fontFamily: 'ibmR',fontSize: 16),),
          SizedBox(height: 20,),//txt1
          Container(
            height: .8,
            color: Color(0xffd4d4d4),
          ),
          SizedBox(height: 15,),
          Column(
            children: [
              Row(
                children: [
                  Text(txt2,style: TextStyle(fontFamily: 'ibmB',fontSize: 18,),),
                  SizedBox(width: 250,),
                  Container(
                    height: 25,
                    width: 60,
                    color: color,
                    child: Center(child: Text(txt3,style: TextStyle(color: Colors.white,fontFamily: 'ibmB'),)),
                  ),


                ],
              ),//الاسعار + مستعملة
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(txt4,style: TextStyle(fontFamily: 'ibmB',fontSize: 16,)),
                  SizedBox(width: 50,),
                  Text(txt5,style: TextStyle(fontFamily: 'ibmB',fontSize: 16,)),
                  SizedBox(width: 50,),
                  Text(txt6,style: TextStyle(fontFamily: 'ibmB',fontSize: 16,)),
                ],),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(txt7,style: TextStyle(fontFamily: 'ibmB',fontSize: 16,color: Colors.grey)),
                  SizedBox(width: 25,),
                  Text(txt8,style: TextStyle(fontFamily: 'ibmB',fontSize: 16,color: Colors.green)),
                  SizedBox(width: 25,),
                  Text(txt9,style: TextStyle(fontFamily: 'ibmB',fontSize: 16,color: Colors.red)),
                ],),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(txt10),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: .8,
                color: Color(0xffd4d4d4),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(txt11,style:

              TextStyle(fontFamily: 'ibmB',fontSize: 20,color: Color(0xff204f84)),),
              CachedNetworkImage(imageUrl: img1,height: 30,width: 35),
            ],
          ),//txt2
          SizedBox(height: 25,),
          Column(
            children: [
              ExpansionTile(
                initiallyExpanded: true,

                title: Text('تفاصيل السيارة',style: TextStyle(fontFamily: 'ibmB'),),

                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffd4d4d4))),
                collapsedBackgroundColor: Color(0XFFf5f5f5),
                collapsedIconColor: Color(0xffa3a3a3),
                backgroundColor: Color(0xfff5f5f5),

                children: [
                  ListTile(
                    title: Text(kind1,style: TextStyle(fontFamily: 'ibmR'),),
                    leading: CachedNetworkImage(imageUrl: img2,height: 20,width: 20),
                    trailing: Text(kind2,
                        style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(kind3,style: TextStyle(fontFamily: 'ibmR'),),
                    leading: CachedNetworkImage(imageUrl: img3,height: 20,width:20),
                    trailing: Text(kind4,
                        style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(kind5,style: TextStyle(fontFamily: 'ibmR'),),
                    leading: CachedNetworkImage(imageUrl: img4,height: 20,width: 20),
                    trailing: Text(kind6,
                        style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(kind7,style: TextStyle(fontFamily: 'ibmR'),),
                    leading: CachedNetworkImage(imageUrl: img5,height:20,width: 20),
                    trailing: Text(kind8,
                        style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(kind9,style: TextStyle(fontFamily: 'ibmR'),),
                    leading: CachedNetworkImage(imageUrl: img6,height: 20,width: 20),
                    trailing: Text(kind10,
                        style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(kind11,style: TextStyle(fontFamily: 'ibmR'),),
                    leading: CachedNetworkImage(imageUrl: img7,height: 20,width:20),
                    trailing: Text(kind12,
                        style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(kind13,style: TextStyle(fontFamily: 'ibmR'),),
                    leading: CachedNetworkImage(imageUrl: img8,height: 20,width: 20),
                    trailing: Text(kind14,
                        style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(kind15,style: TextStyle(fontFamily: 'ibmR'),),
                    leading: CachedNetworkImage(imageUrl: img9,height: 20,width: 20),
                    trailing: Text(kind16,
                        style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
                  ),


                ],
              ),//تفاصيل السيارة
              SizedBox(height: 20,),
              ExpansionTile(title: Text('الامان',style: TextStyle(fontFamily: 'ibmB'),),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffd4d4d4))),
                collapsedBackgroundColor: Color(0XFFf5f5f5),
                collapsedIconColor: Color(0xffa3a3a3),
                backgroundColor: Color(0xfff5f5f5),
                children: [
                  ListTile(
                    title:Text(save1,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(save2,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(save3,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(save4,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(save5,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(save6,style: TextStyle(fontFamily: 'ibmR'),),
                  ),


                ],

              ),//الامان
              SizedBox(height: 20,),
              ExpansionTile(title: Text('الراحة',style: TextStyle(fontFamily: 'ibmB'),),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffd4d4d4))),
                collapsedBackgroundColor: Color(0XFFf5f5f5),
                collapsedIconColor: Color(0xffa3a3a3),
                backgroundColor: Color(0xfff5f5f5),
                children: [
                  ListTile(
                    title:Text(relax1,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax2,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax3,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax4,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax5,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax6,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax7,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax8,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax9,style: TextStyle(fontFamily: 'ibmR'),),
                  ),
                  Container(
                    height: 0.6,
                    color: Color(0xffd4d4d4),
                  ),
                  ListTile(
                    title:Text(relax10,style: TextStyle(fontFamily: 'ibmR'),),
                  ),


                ],

              ),//الراحة
            ],
          ),

        ],
      ),
    );
  }
}
/*Padding(
padding: const EdgeInsets.all(12.0),
child: Column(
children: [


Text('${snapshot.data!.docs[index]['txt1']}',
style: TextStyle(fontFamily: 'ibmR',fontSize: 16),),
SizedBox(height: 20,),//txt1
Container(
height: .8,
color: Color(0xffd4d4d4),
),
SizedBox(height: 15,),
Column(
children: [
Row(
children: [
Text('${snapshot.data!.docs[index]['txt3']}',style: TextStyle(fontFamily: 'ibmB',fontSize: 18,),),
SizedBox(width: 250,),
Container(
height: 25,
width: 60,
color: Colors.red,
child: Center(child: Text('${snapshot.data!.docs[index]['txt4']}',style: TextStyle(color: Colors.white,fontFamily: 'ibmB'),)),
),


],
),//الاسعار + مستعملة
SizedBox(height: 20,),
Row(
children: [
Text('${snapshot.data!.docs[index]['txt5']}',style: TextStyle(fontFamily: 'ibmB',fontSize: 16,)),
SizedBox(width: 50,),
Text('${snapshot.data!.docs[index]['txt6']}',style: TextStyle(fontFamily: 'ibmB',fontSize: 16,)),
SizedBox(width: 50,),
Text('${snapshot.data!.docs[index]['txt7']}',style: TextStyle(fontFamily: 'ibmB',fontSize: 16,)),
],),
SizedBox(height: 20,),
Row(
children: [
Text('${snapshot.data!.docs[index]['txt8']}',style: TextStyle(fontFamily: 'ibmB',fontSize: 16,color: Colors.grey)),
SizedBox(width: 25,),
Text('${snapshot.data!.docs[index]['txt9']}',style: TextStyle(fontFamily: 'ibmB',fontSize: 16,color: Colors.green)),
SizedBox(width: 25,),
Text('${snapshot.data!.docs[index]['txt10']}',style: TextStyle(fontFamily: 'ibmB',fontSize: 16,color: Colors.red)),
],),
SizedBox(height: 20,),
Row(
children: [
Text('${snapshot.data!.docs[index]['txt11']}'),
],
),
SizedBox(height: 20,),
Container(
height: .8,
color: Color(0xffd4d4d4),
),
],
),
SizedBox(height: 25,),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [

Text('${snapshot.data!.docs[index]['txt2']}',style:

TextStyle(fontFamily: 'ibmB',fontSize: 20,color: Color(0xff204f84)),),
CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img14']}',height: 30,width: 35),
],
),//txt2
SizedBox(height: 25,),
Column(
children: [
ExpansionTile(
initiallyExpanded: true,

title: Text('تفاصيل السيارة',style: TextStyle(fontFamily: 'ibmB'),),

shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
borderSide: BorderSide(color: Color(0xffd4d4d4))),
collapsedBackgroundColor: Color(0XFFf5f5f5),
collapsedIconColor: Color(0xffa3a3a3),
backgroundColor: Color(0xfff5f5f5),

children: [
ListTile(
title: Text('${snapshot.data!.docs[index]['kind']}',style: TextStyle(fontFamily: 'ibmR'),),
leading: CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img5']}',height: 20,width: 20),
trailing: Text('${snapshot.data!.docs[index]['kind0']}',
style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['kind1']}',style: TextStyle(fontFamily: 'ibmR'),),
leading: CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img6']}',height: 20,width:20),
trailing: Text('${snapshot.data!.docs[index]['kind2']}',
style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['kind3']}',style: TextStyle(fontFamily: 'ibmR'),),
leading: CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img7']}',height: 20,width: 20),
trailing: Text('${snapshot.data!.docs[index]['kind4']}',
style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['kind5']}',style: TextStyle(fontFamily: 'ibmR'),),
leading: CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img8']}',height:20,width: 20),
trailing: Text('${snapshot.data!.docs[index]['kind6']}',
style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['kind7']}',style: TextStyle(fontFamily: 'ibmR'),),
leading: CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img9']}',height: 20,width: 20),
trailing: Text('${snapshot.data!.docs[index]['kind8']}',
style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['kind9']}',style: TextStyle(fontFamily: 'ibmR'),),
leading: CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img10']}',height: 20,width:20),
trailing: Text('${snapshot.data!.docs[index]['kind10']}',
style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['kind11']}',style: TextStyle(fontFamily: 'ibmR'),),
leading: CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img11']}',height: 20,width: 20),
trailing: Text('${snapshot.data!.docs[index]['kind12']}',
style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['kind13']}',style: TextStyle(fontFamily: 'ibmR'),),
leading: CachedNetworkImage(imageUrl: '${snapshot.data!.docs[index]['img12']}',height: 20,width: 20),
trailing: Text('${snapshot.data!.docs[index]['kind14']}',
style: TextStyle(fontFamily: 'ibmB',fontSize: 15)),
),


],
),//تفاصيل السيارة
SizedBox(height: 20,),
ExpansionTile(title: Text('الامان',style: TextStyle(fontFamily: 'ibmB'),),
shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
borderSide: BorderSide(color: Color(0xffd4d4d4))),
collapsedBackgroundColor: Color(0XFFf5f5f5),
collapsedIconColor: Color(0xffa3a3a3),
backgroundColor: Color(0xfff5f5f5),
children: [
ListTile(
title:Text('${snapshot.data!.docs[index]['save1']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['save2']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['save3']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['save4']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['save5']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['save6']}',style: TextStyle(fontFamily: 'ibmR'),),
),


],

),//الامان
SizedBox(height: 20,),
ExpansionTile(title: Text('الراحة',style: TextStyle(fontFamily: 'ibmB'),),
shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
borderSide: BorderSide(color: Color(0xffd4d4d4))),
collapsedBackgroundColor: Color(0XFFf5f5f5),
collapsedIconColor: Color(0xffa3a3a3),
backgroundColor: Color(0xfff5f5f5),
children: [
ListTile(
title:Text('${snapshot.data!.docs[index]['relax1']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax2']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax3']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax4']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax5']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax6']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax7']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax8']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax9']}',style: TextStyle(fontFamily: 'ibmR'),),
),
Container(
height: 0.6,
color: Color(0xffd4d4d4),
),
ListTile(
title:Text('${snapshot.data!.docs[index]['relax10']}',style: TextStyle(fontFamily: 'ibmR'),),
),


],

),//الراحة
],
),

],
),
),*/