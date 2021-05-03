import 'package:covidessen/fintness_app_theme.dart';
import 'package:covidessen/model/quickCardsmodel.dart';
import 'package:covidessen/view/screens/vaccineRegis.dart';
import 'package:flutter/material.dart';

class HelplinePage extends StatefulWidget {
  MealsListData mealsListData;

  HelplinePage({this.mealsListData});
  @override
  _HelplinePageState createState() =>
      _HelplinePageState(mealsListData: mealsListData);
}

class _HelplinePageState extends State<HelplinePage> {
  MealsListData mealsListData;

  _HelplinePageState({this.mealsListData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                          padding: const EdgeInsets.only(
                              top: 54, left: 10, right: 0, bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
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
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 14, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        mealsListData.meals.join('\n'),
                                        style: TextStyle(
                                          fontFamily: FitnessAppTheme.fontName,
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
                            color: FitnessAppTheme.nearlyWhite.withOpacity(0.2),
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     InkWell(
              //       onTap: () async {
              //         // setState(() {
              //         //   proIdGlobal = widget.prod_details_id.substring(0, 4);
              //         // });
              //         if (await canLaunch("https://www.cowin.gov.in/home")) {
              //           await launch("https://www.cowin.gov.in/home");
              //         } else {
              //           throw 'Could Not Launch ${"https://www.cowin.gov.in/home"}';
              //         }
              //         // launchWhatsApp(
              //         //     message: "hello, want to know about $proIdGlobal ",
              //         //     phone: 'tel:+91-7415585662');
              //       },
              //       child: Card(
              //         child: Container(
              //           color: Colors.blue.shade100,
              //           height: 100,
              //           width: 100,
              //           child: Center(child: Text("COWIN")),
              //         ),
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () async {
              //         await LaunchApp.openApp(
              //           androidPackageName: 'nic.goi.aarogyasetu',
              //           iosUrlScheme: 'pulsesecure://',
              //           appStoreLink:
              //               'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
              //           // openStore: false
              //         );
              //         // Enter thr package name of the App you want to open and for iOS add the URLscheme to the Info.plist file.
              //         // The second arguments decide wether the app redirects PlayStore or AppStore.
              //         // For testing purpose you can enter com.instagram.android
              //       },
              //       child: Card(
              //         child: Container(
              //           color: Colors.orange.shade100,
              //           height: 100,
              //           width: 100,
              //           child: Center(child: Text("AarogyaSetu")),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
