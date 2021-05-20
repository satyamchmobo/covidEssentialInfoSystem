import 'package:covidessen/fintness_app_theme.dart';
import 'package:covidessen/view/screens/vaccineRegis.dart';
import 'package:covidessen/view/screens/webviewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlasmaPlatformsScreen extends StatelessWidget {
  final List<Map> myProducts = [
    {"id": 'dhondh.com', "url": "https://dhoondh.com/"},
    {"id": 'NeedPlasma.com', "url": "https://needplasma.in/"},
    {"id": 'Plasmadonor', "url": "https://plasmadonor.in/"},
    {"id": 'plasma.com', "url": "https://www.plasma.com/"},
    {"id": 'plasmaline', "url": "https://plasmaline.in/"},
    {"id": 'coronacluster', "url": "https://coronaclusters.in/plasma/donate"},
    // {"id": 'zoom.com', "url": "https://zoom.us/"},
    // {"id": 'plasma.com', "url": "https://www.plasma.com/"},
  ];

  // List.generate(4, (index) => {"id": index, "name": "Product $index"})
  //     .toList();

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
                                  color: HexColor("#717D7E").withOpacity(0.6),
                                  offset: const Offset(1.1, 4.0),
                                  blurRadius: 8.0),
                            ],
                            gradient: LinearGradient(
                              colors: <HexColor>[
                                HexColor(
                                    "#58D68D"), //add color to start of header
                                HexColor(
                                    "#82E0AA"), // add color to left endof header
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
                                  //mealsListData.titleTxt,
                                  "writer Title here",
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
                                    padding: const EdgeInsets.only(
                                        top: 14, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          //mealsListData.meals.join('\n')
                                          "writer sub Title here",
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
                          child: Image.asset("assets/twitter_icon.png"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //====================================================>

                Container(
                  height: 800,
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

                            //size of cards
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 30),
                        itemCount: myProducts.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return InkWell(
                            onTap: () async {
                              if (await canLaunch(myProducts[index]["url"])) {
                                await launch(myProducts[index]["url"]);
                              } else {
                                throw 'Could Not Launch ${myProducts[index]["url"]}';
                              }
                            },
                            child: Container(
                              child: Card(
                                child: Column(
                                  children: [
                                    Container(
                                      child: IconButton(
                                          icon: Image.asset(
                                            'assets/dhondh.jpg',
                                          ),
                                          iconSize: 60,
                                          onPressed: () {
                                            // Navigator.of(context)
                                            // .push(MaterialPageRoute(builder:(_)=>Web(url: myProducts[index]["url"],)));
                                          }),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Text(myProducts[index]["id"]),
                                    ),
                                  ],
                                ),
                              ),
                              // alignment: Alignment.center,
                              // child: Text(myProducts[index]["id"]),
                              // decoration: BoxDecoration(
                              //     color: Colors.purple[100],
                              //     borderRadius: BorderRadius.circular(30)),
                            ),
                          );
                        }),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
