import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:covidessen/model/data.dart';
import 'package:http/http.dart' as http;

class HelpLine extends StatefulWidget {
  @override
  _HelpLineState createState() => _HelpLineState();
}

class _HelpLineState extends State<HelpLine> {
  List<HelpineNoModel> _data = <HelpineNoModel>[];

  Future<List<HelpineNoModel>> getData() async {
    var url = Uri.parse('https://api.rootnet.in/covid19-in/contacts');

    var response = await http.get(url);

    var data = <HelpineNoModel>[];

    if (response.statusCode == 200) {
      var dataJson = json.decode(response.body);
      print(dataJson["regional"]);
      print(dataJson);
      print(dataJson["data"]["contacts"]["regional"]);
      for (var dataJsonelemnet in dataJson["data"]["contacts"]["regional"]) {
        data.add(HelpineNoModel.fromJson(dataJsonelemnet));
      }
    }
  
      _data = data;
    

    print(data);
    print("============================>>>>");
    print(_data);
    return data;
  }

  @override
  initState() {
     getData();
    super.initState();
   
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
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _data[index].location,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _data[index].number,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}