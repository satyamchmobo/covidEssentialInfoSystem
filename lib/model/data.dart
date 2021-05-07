

class HelpineNoModel{
 final String location;
  final String number;
  
 HelpineNoModel({this.location,this.number});

  // factory Data.fromJson(Map<String, dynamic> json){
  //   location : json["loc"] == null ? null : json["loc"];
  //   number : json["number"] == null ? null :  json["number"];
  // }
  // Map<String, dynamic> toJson() => {
  //   "location": location == null ? null : location,
  //   ""

  // }
 factory HelpineNoModel.fromJson(Map<String, dynamic> json) => HelpineNoModel(
        location :  json["loc"] == null ? null : json["loc"],
        number : json["number"] == null ? null : json["number"],
      );
}
