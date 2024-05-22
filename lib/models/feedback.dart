
import 'package:flutter/material.dart';
class DataSheets {
  final String feedback,name,Img;
  DataSheets({required this.feedback,required this.name,required this.Img});
  factory DataSheets.fromJson(Map<String,dynamic>json){
    return DataSheets(
        feedback: "${json['name']}",
        name:"${json['feedback']}" ,
        Img: "${json['Img']}");
  }
 Map toJson ()=>{
    "Name":name,
   "Feedback":feedback,
   "Img":Img
  };

}