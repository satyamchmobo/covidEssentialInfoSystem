import 'package:covidessen/fintness_app_theme.dart';
import 'package:covidessen/main.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:india_beats_covid/core/mock/mock_data.dart';
// import 'package:india_beats_covid/utils/constants.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class TwitterScreen extends StatelessWidget {
  TextEditingController city = TextEditingController();

  _launchURL(String city) async {
    print(city);

    // const url = Uri.parse(
    // "https://twitter.com/search?q=verified+${keyword.value}+(bed+OR+beds+OR+icu+OR+oxygen+OR+ventilator+OR+ventilators+OR+fabiflu)+-%22not+verified%22+-%22unverified%22+-%22needed%22+-%22required%22&f=live"),

    String url =
        "https://twitter.com/search?q=verified+${city}+(bed+OR+beds+OR+icu+OR+oxygen+OR+ventilator+OR+ventilators+OR+fabiflu)+-%22not+verified%22+-%22unverified%22+-%22needed%22+-%22required%22&f=live";
    await launch(url);
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                                    "#009DEC"), //add color to start of header
                                HexColor(
                                    "#F7F7F7"), // add color to left endof header
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
                                  padding: const EdgeInsets.only(left:10.0,top:5),
                                  child: Text(
                                    //mealsListData.titleTxt,
                                    "Twitter Feed Help",
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
                                          "Search by name of your city or state",
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

                GFListTile(
                    color: Colors.grey[200],
                    titleText: 'Note',
                    subtitleText:
                        'Type your city or state name with correct spelling. Try to type name with first character as capital.                                                                                                                                                              For Example : City - Pune or State - Maharashtra.                                                                        Search results depends on keywords.',
                    icon: Icon(
                      Icons.lightbulb_outline,
                      color: Colors.green,
                    )),

                SizedBox(
                  height: 30,
                ),

                //===
                Text("Type here"),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16, bottom: 16, left: 16, right: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Ex . Delhi",
                      border: OutlineInputBorder(),
                    ),
                    controller: city,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16, bottom: 16, left: 16, right: 16),
                  child: ElevatedButton(
                    onPressed: () async {
                      _launchURL(city.text);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Search"),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                ),
                GFListTile(
                    color: Colors.green[100],
                    subtitleText:
                        'It will take you to twitter app or website with all relevant results.',
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
