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

class WhatsAppBotPage extends StatefulWidget {
  MealsListData mealsListData;

  WhatsAppBotPage({this.mealsListData});
  @override
  _WhatsAppBotPageState createState() =>
      _WhatsAppBotPageState(mealsListData: mealsListData);
}

class _WhatsAppBotPageState extends State<WhatsAppBotPage> {
  MealsListData mealsListData;

  _WhatsAppBotPageState({this.mealsListData});

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
                                  color: HexColor(mealsListData.endColor)
                                      .withOpacity(0.6),
                                  offset: const Offset(1.1, 4.0),
                                  blurRadius: 8.0),
                            ],
                            gradient: LinearGradient(
                              colors: <HexColor>[
                                HexColor(mealsListData.startColor),
                                HexColor(mealsListData.endColor),
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
                            //whatsapp bots text
                            padding: const EdgeInsets.only(
                                top: 54, left: 20, right: 0, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                //=============> back button===
                                Row(children: [
                                  GestureDetector(
                                      child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,                                    
                                      ),
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                    ), 
                                    ],
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0,left: 10),
                                  child: Text(
                                    mealsListData.titleTxt,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: FitnessAppTheme.fontName,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      letterSpacing: 0.2,
                                      color: FitnessAppTheme.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 14, bottom: 8,left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          mealsListData.meals.join('\n'),
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
                                // mealsListData.kacl != 0
                                //     ? Row(
                                //         mainAxisAlignment: MainAxisAlignment.start,
                                //         crossAxisAlignment: CrossAxisAlignment.end,
                                //         children: <Widget>[
                                //           Text(
                                //             mealsListData.kacl.toString(),
                                //             textAlign: TextAlign.center,
                                //             style: TextStyle(
                                //               fontFamily: FitnessAppTheme.fontName,
                                //               fontWeight: FontWeight.w500,
                                //               fontSize: 24,
                                //               letterSpacing: 0.2,
                                //               color: FitnessAppTheme.white,
                                //             ),
                                //           ),
                                //           Padding(
                                //             padding:
                                //                 const EdgeInsets.only(left: 4, bottom: 3),
                                //             child: Text(
                                //               'kcal',
                                //               style: TextStyle(
                                //                 fontFamily: FitnessAppTheme.fontName,
                                //                 fontWeight: FontWeight.w500,
                                //                 fontSize: 10,
                                //                 letterSpacing: 0.2,
                                //                 color: FitnessAppTheme.white,
                                //               ),
                                //             ),
                                //           ),
                                //         ],
                                //       )
                                //     : Container(
                                //         decoration: BoxDecoration(
                                //           color: FitnessAppTheme.nearlyWhite,
                                //           shape: BoxShape.circle,
                                //           boxShadow: <BoxShadow>[
                                //             BoxShadow(
                                //                 color: FitnessAppTheme.nearlyBlack
                                //                     .withOpacity(0.4),
                                //                 offset: Offset(8.0, 8.0),
                                //                 blurRadius: 8.0),
                                //           ],
                                //         ),
                                //         child: Padding(
                                //           padding: const EdgeInsets.all(6.0),
                                //           child: Icon(
                                //             Icons.add,
                                //             color: HexColor(mealsListData.endColor),
                                //             size: 24,
                                //           ),
                                //         ),
                                //       ),
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
                          child: Image.asset(mealsListData.imagePath),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 600,
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("whatsapbots")
                        .snapshots(),
                    builder: (context, snapshot) {
                      return !snapshot.hasData
                          ? Text('PLease Wait')
                          : ListView.builder(
                              itemCount: snapshot.data.docs.length,
                              itemBuilder: (context, index) {
                                print(snapshot.data.docs.length);
                                print("=====>");
                                DocumentSnapshot whatsappbotdocsnap =
                                    snapshot.data.docs[index];
                                return ListItemCustom(
                                  prodName: whatsappbotdocsnap['botname'],
                                  prodQuant:
                                      whatsappbotdocsnap['botWhatsAppNo'],
                                  imageSize: 60,
                                  imagePath: "assets/whatsapp (1).png",
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
