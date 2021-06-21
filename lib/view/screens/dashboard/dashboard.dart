import 'package:covidessen/constants/languageConstants.dart';
import 'package:covidessen/fintness_app_theme.dart';
import 'package:covidessen/model/quickCardsmodel.dart';
import 'package:covidessen/theme/text_styles.dart';
import 'package:covidessen/theme/theme.dart';
import 'package:covidessen/view/screens/Login.dart';
import 'package:covidessen/view/screens/about.dart';
import 'package:covidessen/view/screens/helpline.dart';
import 'package:covidessen/view/screens/icmrlabs.dart';
import 'package:covidessen/view/screens/plasma.dart';
import 'package:covidessen/view/screens/setting.dart';
import 'package:covidessen/view/screens/stateweb.dart';
import 'package:covidessen/view/screens/twitter_screen.dart';
import 'package:covidessen/view/screens/twittercard.dart';
import 'package:covidessen/view/screens/vaccineRegis.dart';
import 'package:covidessen/view/screens/whatsapp.dart';
import 'package:covidessen/view/theme/light_color.dart';
import 'package:covidessen/view/widgets/dashboardWidgets/HelpCard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool is_switched = false;

  String plasmaCardString = "Plasma Help";
  String twitterCardString = "Twitter Help";
  String stateCardString = "State Help";

  var textValue = 'English';

// import 'package:zealth_symptomapp/view/severty.dart';
  bool notify_switch = false;
  String notify_text = 'Start';
  LanguageConstants langConsObj = new LanguageConstants();
  bool boolVar = true;
  List<MealsListData> mealsListData = MealsListData.tabIconsList;
  bool checkStatus = false;
  List listOfIcon = <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
          width: 20, height: 20, child: Image.asset("assets/Fill (1).png")
          // .alignCenter
          // .ripple(() {}, borderRadius: BorderRadius.circular(13)
          // )
          ),
    ),
    Text("Search anything")
  ];

  String prewid = "dummywid";
  final _formKey = GlobalKey<FormState>();
  int _currentNav = 0;
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  fun() {}

  Map<String, bool> values = {
    'Fatigue ': false,
    'Vomiting': false,
  };

  List<String> tmpArray = [];

  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tmpArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    tmpArray.clear();
  }

  Map<String, Widget> map = {
    // 'icon': Padding(
    //   padding: const EdgeInsets.only(right: 16.0),
    //   child: SizedBox(
    //       width: 20, height: 20, child: Image.asset("assets/Fill (1).png")
    //       // .alignCenter
    //       // .ripple(() {}, borderRadius: BorderRadius.circular(13)
    //       // )
    //       ),
    // ),
    // 'hintext': Text("Search symptoms")
  };
  List listOfWid = <Widget>[];

  Widget build(BuildContext context) {
    // ===================> Variable Section <=====================
    String AccName = "Dnyaneshwar ";
    String AccEmail = "wakshe2@gmail.com";

    listOfWid.clear();
    map.forEach((key, value) => listOfWid.add(value));
    boolVar = false;
    // ===================> Variable Section <=====================
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Text(
          "Fight&Win",
          style: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 30),
            child: Row(
              children: [
                Text(
                  '$textValue',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15.0,
                  ),
                ),
                Switch(
                  value: is_switched,
                  onChanged: (value) {
                    if (value == true) {
                      setState(() {
                        is_switched = true;
                        textValue = 'हिन्दी';
                        plasmaCardString = "प्लाज्मा सहायता";
                        twitterCardString = "ट्विटर सहायता";
                        stateCardString = "राज्य सहायता";
                      });
                    } else {
                      setState(() {
                        is_switched = false;
                        textValue = 'English';
                        plasmaCardString = "Plasma Help";
                        twitterCardString = "Twitter Help";
                        stateCardString = "State Help";
                      });
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),

      //============================> Drawee Start<=================================
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              AccName,
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              AccEmail,
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                'D',
                style: TextStyle(fontSize: 40),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(colors: [
                Color(0xFF33FFCC),
                Color(0xFF33CCFF),
                Color(0xFF6666FF)
              ]),
            ),
          ),
          //============================> Inner List Start<=================================
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () async {
              await FirebaseAuth.instance.signOut();

              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          )
        ]),
      ),
      //============================> Drawee Close<=================================

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 21, right: 10),
                    // child: Row(
                    //   children: [
                    //     Container(
                    //       height: 28,
                    //       width: 22,
                    //       child: Image.asset("assets/Shape.png"),
                    //     ),
                    //     SizedBox(
                    //       width: 103,
                    //     ),
                    //     Text(
                    //       "Fight&Win",
                    //       style: GoogleFonts.poppins(
                    //         textStyle: TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21.0),
                      child: Text(
                        "Search for Help",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFF0E1D2C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Container(
                      height: 55,
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                      width: 370,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffA5B2BE),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0xffA5B2BE),
                            blurRadius: 12,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                      child: TextField(
                        onSubmitted: null,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          hintText:
                              listOfWid.length == 0 ? "Search Symptoms" : null,

                          hasFloatingPlaceholder: true,

                          prefixIcon: listOfWid.length == 0
                              ? Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset("assets/Fill (1).png")
                                      // .alignCenter
                                      // .ripple(() {}, borderRadius: BorderRadius.circular(13)
                                      // )
                                      ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Row(
                                    children: listOfWid,
                                  ),
                                ),
                          // hintStyle: TextStyle.body.subTitleColor,

                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () {
                                if (checkStatus) {
                                  print(tmpArray);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Twittercard()),
                                  );
                                }
                              },
                              child: Container(
                                width: 64,
                                height: 22,
                                decoration: BoxDecoration(
                                    color: checkStatus
                                        ? Color(0xFFFFE9E4)
                                        : Color(0xFFEAEFF4),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Center(
                                  child: Text(
                                    "Check",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: checkStatus
                                              ? Color(0xFFFF0270)
                                              : Color(0xFFA5B2BE),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

// vaccine notification  card             padding tapable lauch to new screen alignment
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              minVerticalPadding: 10.0,
                              leading: Icon(
                                notify_switch
                                    ? Icons.notifications
                                    : Icons.notifications_off,
                                color: !notify_switch
                                    ? Colors.red
                                    : Colors.lightBlueAccent,
                              ),
                              title: Text('Vaccine Slot Notification'),
                              subtitle: Text(
                                  "Don't miss the  Vaccant slot!! Vaccination saves lives at every stage of life."),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 60),
                                  child: TextButton(
                                    child: const Text('DETAILS'),
                                    onPressed: () {/* ... */},
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Switch(
                                    value: notify_switch,
                                    onChanged: (value) {
                                      setState(() {
                                        notify_switch = value;
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(width: 2),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10, //help and select any
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21.0),
                      child: Text(
                        "Select Any",
                        style: Get.textTheme.bodyText1.copyWith(
                            color: Color(0xFF3E5061),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PlasmaPlatformsScreen()),
                            );
                          },
                          child: helpCard(
                              assetPath: "assets/blood-drop.png",
                              cardTitle: plasmaCardString),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StateWebPage()),
                            );
                          },
                          child: helpCard(
                              assetPath: "assets/indian-map (1).png",
                              cardTitle: stateCardString),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TwitterScreen()),
                            );
                          },
                          child: helpCard(
                              assetPath: "assets/twitter_icon.png",
                              cardTitle: twitterCardString),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppTheme.fullHeight(context) * .20,
              width: AppTheme.fullWidth(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // physics: BouncingScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VaccineRegis(
                                  mealsListData: mealsListData[0],
                                )),
                      );
                    },
                    child: _categoryCard(mealsListData[0],
                        color: LightColor.green,
                        lightColor: LightColor.lightGreen),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WhatsAppBotPage(
                                  mealsListData: mealsListData[2],
                                )),
                      );
                    },
                    child: _categoryCard(mealsListData[2], // whatsapp bot card
                        color: LightColor.green,
                        lightColor: LightColor.lightGreen),
                  ),
                  // _categoryCard("Milk Products", "50+ products",
                  //     color: LightColor.skyBlue, lightColor: LightColor.lightBlue),
                ],
              ),
            ),
            SizedBox(
              height: AppTheme.fullHeight(context) * .20,
              width: AppTheme.fullWidth(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // physics: BouncingScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelplinePage(
                                  mealsListData: mealsListData[1],
                                )),
                      );
                    },
                    child: _categoryCard(mealsListData[1],
                        color: LightColor.orange,
                        lightColor: LightColor.lightOrange),
                  ),

                  // _categoryCard("Milk Products", "50+ products",
                  //     color: LightColor.skyBlue, lightColor: LightColor.lightBlue),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ICMRlabspage(
                                // mealsListData: mealsListData[3],
                                )),
                      );
                    },
                    child: _categoryCard(mealsListData[3],
                        color: LightColor.orange,
                        lightColor: LightColor.lightOrange),
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppTheme.fullHeight(context) * .20,
              width: AppTheme.fullWidth(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // physics: BouncingScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _categoryCard(mealsListData[2],
                      color: LightColor.green,
                      lightColor: LightColor.lightGreen),

                  // _categoryCard("Milk Products", "50+ products",
                  //     color: LightColor.skyBlue, lightColor: LightColor.lightBlue),
                  _categoryCard(mealsListData[3],
                      color: LightColor.orange,
                      lightColor: LightColor.lightOrange)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryCard(MealsListData mealsListData,
      {Color color, Color lightColor}) {
    TextStyle titleStyle = TextStyles.title;
    TextStyle subtitleStyle = TextStyles.body;
    if (AppTheme.fullWidth(context) < 392) {
      titleStyle = TextStyles.body;
      subtitleStyle = TextStyles.bodySm;
    }
    return SizedBox(
      width: 160,
      height: 200,
      child: Stack(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 32, left: 8, right: 8, bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: HexColor(mealsListData.endColor).withOpacity(0.6),
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
                  bottomRight: Radius.circular(4.0),
                  bottomLeft: Radius.circular(4.0),
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
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
                        fontSize: 12,
                        letterSpacing: 0.2,
                        color: FitnessAppTheme.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              mealsListData.meals.join('\n'),
                              style: TextStyle(
                                fontFamily: FitnessAppTheme.fontName,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
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
            top: 0,
            //left: 0,
            left: 10,
            child: Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: FitnessAppTheme.nearlyWhite.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 25,
            child: Hero(
              tag: 'pngIconHero',
              child: SizedBox(
                width: 60,
                height: 60,
                child: Image.asset(mealsListData.imagePath),
              ),
            ),
          )
        ],
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.transparent;
  }
}
