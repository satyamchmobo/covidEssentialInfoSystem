import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:covidessen/model/data.dart';
import 'package:http/http.dart' as http;
class HelpLine extends StatefulWidget {
  @override
  _HelpLineState createState() => _HelpLineState();
}

class _HelpLineState extends State<HelpLine> {

  
  

  List<Data> _data = <Data>[];
  
  Future<List<Data>> getData() async{
    var url = Uri.parse('https://api.rootnet.in/covid19-in/contacts');

    var response = await http.get(url);

    var data = <Data>[];

    if(response.statusCode==200){
      var dataJson = json.decode(response.body);
      
      for(var dataJsonelemnet in dataJson){

        data.add(Data.fromJson(dataJsonelemnet));

      }
    }
    return data;

  }

 
  

  @override
  initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    getData().then((value) => _data.addAll(value));

    return Scaffold(
      appBar: AppBar(
        title: Text('Ask To Help'),
      ),
      
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index){
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(top:32.0, bottom: 32.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _data(index).location,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),),
                  Text(
                    _data(index).number,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),),

                ],
              ),
            ),
          );
        },
      ),
    );
  }

}