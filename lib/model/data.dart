import 'dart:convert';
class Data{
 // final String location;
  //final String number;
  
 Data({this.location,this.number});

  // factory Data.fromJson(Map<String, dynamic> json){
  //   location : json["loc"] == null ? null : json["loc"];
  //   number : json["number"] == null ? null :  json["number"];
  // }
  // Map<String, dynamic> toJson() => {
  //   "location": location == null ? null : location,
  //   ""

  // }
 factory Data.fromJson(Map<String, dynamic> json) => Data(
        location :  json["loc"] == null ? null : json["loc"],
        number : json["number"] == null ? null : json["number"],
      );
}