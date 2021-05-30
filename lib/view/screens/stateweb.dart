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
  bool isSearching;

  TextEditingController stateLiSearchController = TextEditingController();

  final url = "";

  @override
  void initState() {
    stateLiSearchController.addListener(() {
      // filterContacts();
      setState(() {});
    });
    super.initState();
  }
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
    isSearching = stateLiSearchController.text.isNotEmpty;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(

              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 0, right: 0, bottom: 6),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: HexColor("#717D7E").withOpacity(0.6),
                                  offset: const Offset(1.1, 4.0),
                                  blurRadius: 8.0),
                            ],
                            gradient: LinearGradient(
                              colors: <HexColor>[
                                HexColor(
                                    "#FF9933"), //add color to start of header
                                HexColor("#FFFFFF"),
                                HexColor(
                                    "#138808"), // add color to left endof header
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 54, left: 10, right: 0, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      //mealsListData.titleTxt,
                                      "Find Web - help ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: FitnessAppTheme.fontName,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        letterSpacing: 0.2,
                                        color: FitnessAppTheme.white,
                                      ),
                                    ),
                                    Text(
                                      //mealsListData.titleTxt,
                                      "  state ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: FitnessAppTheme.fontName,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        letterSpacing: 0.2,
                                        color: Color(0xFF138808),
                                      ),
                                    ),
                                    Text(
                                      //mealsListData.titleTxt,
                                      " portals  ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: FitnessAppTheme.fontName,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        letterSpacing: 0.2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16,
                                        bottom: 16,
                                        left: 16,
                                        right: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          //mealsListData.meals.join('\n')
                                          "Search by name of your state",
                                          style: TextStyle(
                                            fontFamily:
                                                FitnessAppTheme.fontName,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 0.2,
                                            color: FitnessAppTheme.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -8,
                        //left: 0,
                        right: -6,
                        child: Hero(
                          tag: 'pngIconHero',
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              color:
                                  FitnessAppTheme.nearlyWhite.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        right: 10,
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset("assets/twitter_icon.png"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //     Container(
                //   child: TextField(
                //     controller: stateLiSearchController,
                //     decoration: InputDecoration(
                //         labelText: 'Search contact',
                //         prefixIcon: Icon(Icons.search)),
                //   ),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: TextFormField(
                    controller: stateLiSearchController,
                    decoration: InputDecoration(
                      hintText: 'Ex: Madhya Pradesh',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'You must enter the Product Name';
                    //   } else if (value.length > 30) {
                    //     return 'Product name cant have more than 10 letters';
                    //   }
                    // },
                  ),
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
                                if (isSearching) {
                                  // filterContactsif(stateLiSearchController.text.substring(0,1)==statewebdocsnap['stateName'].toString().substring(0,1))
                                  if (statewebdocsnap['stateName']
                                      .contains(stateLiSearchController.text)) {
                                    return ListItemCustom(
                                      prodName: statewebdocsnap['stateName'],
                                      prodQuant: statewebdocsnap['websiteURL'],
                                      imageSize: 60,
                                      imagePath: "assets/launch-.jpg",
                                      // prodQuant: " 8108982186",
                                      //  pr

                                      funToCalNum: 2,
                                    );
                                  }
                                  return null;
                                } else
                                  return ListItemCustom(
                                    prodName: statewebdocsnap['stateName'],
                                    prodQuant: statewebdocsnap['websiteURL'],
                                    imageSize: 60,
                                    imagePath: "assets/launch-.jpg",
                                    // prodQuant: " 8108982186",
                                    //  pr

                                    funToCalNum: 2,
                                  );
                              });
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
