import 'package:covidessen/model/quickCardsmodel.dart';
import 'package:covidessen/view/screens/helpline.dart';
import 'package:covidessen/view/screens/icmrlabs.dart';
import 'package:covidessen/view/screens/plasma.dart';
// import 'package:covidessen/view/screens/plasma.dart';
import 'package:covidessen/view/screens/vaccineRegis.dart';
import 'package:covidessen/view/screens/whatsapp.dart';
import 'package:covidessen/view/screens/disclaimer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:covidessen/fintness_app_theme.dart';
import 'package:covidessen/theme/text_styles.dart';
import 'package:covidessen/theme/extention.dart';
import 'package:covidessen/theme/theme.dart';
import 'package:covidessen/theme/light_color.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:zealth_symptomapp/view/severty.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: SymptomsPage(),
    );
  }
}

bool boolVar = true;

class SymptomsPage extends StatefulWidget {
  @override
  _SymptomsPageState createState() => _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
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

  @override
  Widget build(BuildContext context) {
    listOfWid.clear();
    map.forEach((key, value) => listOfWid.add(value));
    

    boolVar = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fight&Win",
          style:            
             GoogleFonts.poppins(color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600),           
        
          ),
          backgroundColor: Colors.lightBlue.shade400,
          
         
      ),
      //============================> Drawee Start<=================================
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero, 
          children: [
              UserAccountsDrawerHeader(
                accountName: Text('Dnyaneshwar Wakshe'), 
                accountEmail: Text('wakshe2@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text('D',
                  style: TextStyle(fontSize: 40),),

                ),
                
              ),
              //============================> Inner List Start<=================================
              ListTile(
                leading: Icon(Icons.home,),title: Text('Home'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('About Us'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),            

            
          ],
        ),
      ),
      //============================> Drawee Close<=================================
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentNav,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 7, top: 10),
              child: Container(
                height: 21,
                width: 30,
                child: Image.asset("assets/home-web-button-outline.png"),
              ),
            ),
            title: Text(
              "Home",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3E5061)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 7, top: 10),
              child: Container(
                height: 21,
                width: 30,
                child: Image.asset(
                  "assets/group.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(
              "Team",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFF0270)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 7, top: 10),
              child: GestureDetector(
                child: Container(
                  height: 21,
                  width: 30,
                  child: Image.asset(
                    "assets/information.png",
                    fit: BoxFit.contain,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Disclaimer_page()));
                },
              ),
            ),
            title: Text(
              "Disclaimer",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3E5061)),
            ),
          ),
          // BottomNavigationBarItem(
          //   icon: Padding(
          //     padding: const EdgeInsets.only(bottom: 7, top: 10),
          //     child: Container(
          //       height: 21,
          //       width: 30,
          //       child: Image.asset("assets/Activity.png"),
          //     ),
          //   ),
          //   title: Text(
          //     "Reports",
          //     style: GoogleFonts.poppins(
          //         fontSize: 12,
          //         fontWeight: FontWeight.w500,
          //         color: Color(0xFF3E5061)),
          //   ),
          // ),
        ],
        onTap: (index) {
          setState(() {
            _currentNav = index;
          });
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (_) => Disclaimer_page()));
        },
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 21, right: 10),
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
                    height: 20,
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

                  // Form(
                  //     key: _formKey,
                  //     child: Column(
                  //       children: [
                  //         TextFormField(
                  //           decoration: InputDecoration(
                  //               //prefix: Text('widgetold'),
                  //               prefixIcon: Row(
                  //                 children: listOfIcon

                  //                 ,
                  //               ),
                  //               hintText: "prewid"),
                  //         ),
                  //         FlatButton(
                  //             onPressed: () {
                  //               if (_formKey.currentState.validate() != false) {
                  //                 // If the form is valid, display a snackbar. In the real world,
                  //                 // you'd often call a server or save the information in a database.

                  //                 setState(() {
                  //                   prewid = "nayaagaya";
                  //                   listOfIcon.add(Row(children: [Icon(Icons.access_alarm),Text('t1')],));
                  //                 });
                  //               }
                  //             },
                  //             child: Text('form check'))
                  //       ],
                  //     )),

                  ///TEXT FIELD STARTS FROM HERE

                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: 55,
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                            blurRadius: 15,
                            offset: Offset(5, 5),
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
                          //enabled:,

                          // prefix: ,
                          // suffixText: "fdf",
                          // prefix: ListView(
                          //   children:  tempArr,
                          // ),
                          //     'icon': Padding(

                          //prefixText: 'fdfd',

                          hasFloatingPlaceholder: true,

                          // listOfWid.length==0?Padding(
                          //                   padding:
                          //                       const EdgeInsets.only(right: 16.0),
                          //                   child: SizedBox(
                          //                       width: 20,
                          //                       height: 20,
                          //                       child:
                          //                           Image.asset("assets/Fill (1).png")
                          //                       // .alignCenter
                          //                       // .ripple(() {}, borderRadius: BorderRadius.circular(13)
                          //                       // )
                          //                       ),
                          //                 ):
                          //                 listOfWid,

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
                                        builder: (context) =>
                                            PlasmaPlatformsScreen()),
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
                                // child: Image.asset("assets/Fill (1).png    ",
                                // scale:0.5,)
                                // .alignCenter
                                // .ripple(() {}, borderRadius: BorderRadius.circular(13)
                                // )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  //backgroundBlendMode: ,
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: 76,
                              height: 104,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 34,
                                    width: 33,
                                    child: Image.asset(
                                        "assets/headache (1) 2.png"),
                                  ),
                                  Text(
                                    "Fatigue ",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Color(0xFF3E5061),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  //backgroundBlendMode: ,
                                  color: Colors.transparent,
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: 76,
                              height: 104,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,

                                value: _isChecked1,
                                tristate: boolVar,
                                checkColor: Colors.green,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),

                                activeColor: Colors.green,
                                focusColor: Colors.pink,
                                // fillColor: ,
                                // focusNode: ,
                                // overlayColor: ,
                                // materialTapTargetSize: ,
                                // visualDensity: ,

                                onChanged: (bool isChecked) {
                                  if (_formKey.currentState.validate() !=
                                      false) {
                                    setState(() {
                                      _isChecked1 = isChecked;
                                      if (_isChecked1 == true ||
                                          _isChecked2 == true) {
                                        checkStatus = true;
                                      }
                                      if (_isChecked1 == true) {
                                        // checkStatus = true;
                                        map.remove('icon');
                                        map.remove('hintext');
                                        tmpArray.add('Fatigue');
                                        map['Fatigue'] = Padding(
                                          padding:
                                              const EdgeInsets.only(left: 9.0),
                                          child: Container(
                                            height: 30,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: 30,
                                                  width: 30,
                                                  child: Image.asset(
                                                      'assets/headache (1) 2.png'),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 4),
                                                  child: Text(
                                                    'Fatigue',
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          color:
                                                              Color(0xFF3E5061),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                        print(listOfWid);
                                      }
                                      if (_isChecked1 == false &&
                                          _isChecked2 == false) {
                                        checkStatus = false;
                                      }

                                      if (_isChecked1 == false) {
                                        tmpArray.remove('Fatigue');
                                        map.remove('Fatigue');
                                        // checkStatus = false;

                                        // if (map.isEmpty) {
                                        //   checkStatus = false;

                                        //   map['icon'] = Padding(
                                        //     padding:
                                        //         const EdgeInsets.only(right: 16.0),
                                        //     child: SizedBox(
                                        //         width: 20,
                                        //         height: 20,
                                        //         child:
                                        //             Image.asset("assets/Fill (1).png")
                                        //         // .alignCenter
                                        //         // .ripple(() {}, borderRadius: BorderRadius.circular(13)
                                        //         // )
                                        //         ),
                                        //   );

                                        //   map['hintext'] = Text("Search symptoms");
                                        // }
                                        print(listOfWid);
                                      }

                                      print(tmpArray);
                                    });
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  //backgroundBlendMode: ,
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: 76,
                              height: 104,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 34,
                                    width: 33,
                                    child: Image.asset(
                                        "assets/icons8-coughing-48 1.png"),
                                  ),
                                  Text("Vomiting ",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Color(0xFF3E5061),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  //backgroundBlendMode: ,
                                  color: Colors.transparent,
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: 76,
                              height: 104,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,

                                value: _isChecked2,
                                tristate: boolVar,
                                checkColor: Colors.green,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),

                                activeColor: Colors.green,
                                focusColor: Colors.pink,
                                // fillColor: ,
                                // focusNode: ,
                                // overlayColor: ,
                                // materialTapTargetSize: ,
                                // visualDensity: ,

                                onChanged: (bool isChecked) {
                                  if (_formKey.currentState.validate() !=
                                      false) {
                                    setState(() {
                                      _isChecked2 = isChecked;

                                      if (_isChecked1 == true ||
                                          _isChecked2 == true) {
                                        checkStatus = true;
                                      }

                                      if (_isChecked2 == true) {
                                        map.remove('icon');
                                        map.remove('hintext');

                                        tmpArray.add('Vomiting');
                                        map['Vomiting'] = Padding(
                                          padding:
                                              const EdgeInsets.only(left: 9.0),
                                          child: Container(
                                            height: 30,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: 30,
                                                  width: 30,
                                                  child: Image.asset(
                                                      'assets/icons8-coughing-48 1.png'),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 4),
                                                  child: Text(
                                                    'Vomiting',
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          color:
                                                              Color(0xFF3E5061),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                        print(listOfWid);

                                        //listOfWid.add(map['Vomiting']);
                                      }

                                      if (_isChecked1 == false &&
                                          _isChecked2 == false) {
                                        checkStatus = false;
                                      }
                                      if (_isChecked2 == false) {
                                        tmpArray.remove('Vomiting');
                                        map.remove('Vomiting');
                                        print(listOfWid);
                                        // checkStatus = false;

                                        // if (map.isEmpty) {
                                        //   checkStatus = false;
                                        //   map['icon'] = Padding(
                                        //     padding:
                                        //         const EdgeInsets.only(right: 16.0),
                                        //     child: SizedBox(
                                        //         width: 20,
                                        //         height: 20,
                                        //         child:
                                        //             Image.asset("assets/Fill (1).png")
                                        //         // .alignCenter
                                        //         // .ripple(() {}, borderRadius: BorderRadius.circular(13)
                                        //         // )
                                        //         ),
                                        //   );

                                        //   map['hintext'] = Text("Search symptoms");
                                        // }

                                        //listOfWid.add(map['Vomiting']);
                                      }

                                      print(tmpArray);
                                    });
                                  }
                                },
                              ),
                            ),
                          ],
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

                  // _categoryCard("Milk Products", "50+ products",
                  //     color: LightColor.skyBlue, lightColor: LightColor.lightBlue),
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
    TextStyle titleStyle = TextStyles.title.bold.white;
    TextStyle subtitleStyle = TextStyles.body.bold.white;
    if (AppTheme.fullWidth(context) < 392) {
      titleStyle = TextStyles.body.bold.white;
      subtitleStyle = TextStyles.bodySm.bold.white;
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

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
