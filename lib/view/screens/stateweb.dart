import 'package:covidessen/fintness_app_theme.dart';
import 'package:covidessen/model/quickCardsmodel.dart';
import 'package:covidessen/view/screens/vaccineRegis.dart';
import 'package:covidessen/view/widgets/listTile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:covidessen/theme/light_color.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

class StateWebPage extends StatefulWidget {
  // MealsListData mealsListData;

  // StateWebPage({this.mealsListData});
  @override
  _StateWebPageState createState() => _StateWebPageState();
}

class _StateWebPageState extends State<StateWebPage> {
  final url="";
  // MealsListData mealsListData;

  // _StateWebPageState({this.mealsListData});

  void launchWhatsApp({
    @required String phone,
    @required String message,
  }) async {
    String url() {
      if (Platform.isIOS) {
        return "whatsapp://wa.me/$phone/?text=${Uri.parse(message)}";
      } else {
        return "whatsapp://send?phone=$phone.&text=${Uri.parse(message)}";
      }
      if (Platform.isIOS) {
        return message;
      } else {
        return phone;
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  // Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// ignore_for_file: public_member_api_docs

// @dart=2.9

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 800,
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("allStatesWebsite")
                        .snapshots(),
                    builder: (context, snapshot) {
                      return !snapshot.hasData
                          ? Text('Please Wait')
                          : ListView.builder(
                              itemCount: snapshot.data.docs.length,
                              itemBuilder: (context, index) {
                                print(snapshot.data.docs.length);
                                print("=====>");
                                DocumentSnapshot statewebdocsnap =
                                    snapshot.data.docs[index];
                                    
                                return ListItemCustom(
                                  prodName: statewebdocsnap['stateName'],
                                  prodQuant: statewebdocsnap['websiteURL'],
                                  imageSize: 60,
                                  imagePath: "assets/launch-.jpg",
                                  // prodQuant: " 8108982186",
                                  //  pr

                                  funToCalNum: 0,
                                );
                              },
                            );
                    },
                  ),
                ),

                // ListItemCustom(
                //   prodName: "MicInsee whatsapp bot",
                //   prodPrice: " 12",
                //   imageSize: 60,
                //   imagePath: "assets/whatsapp (1).png",
                //   prodQuant: " 8108982186",

                // funToCalNum: 0,

                // ),
              ]),
        ),
      ),
    );
  }
}
