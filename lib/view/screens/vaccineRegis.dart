import 'package:covidessen/fintness_app_theme.dart';
import 'package:covidessen/model/quickCardsmodel.dart';
import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VaccineRegis extends StatefulWidget {
  MealsListData mealsListData;

  VaccineRegis({this.mealsListData});
  @override
  _VaccineRegisState createState() =>
      _VaccineRegisState(mealsListData: mealsListData);
}

class _VaccineRegisState extends State<VaccineRegis> {
  MealsListData mealsListData;

  _VaccineRegisState({this.mealsListData});
  Future<void> _launched;
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //===>>>starts==>>upper card with gradient/ icon/info about page/what it have /what it do etc
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
                                padding: const EdgeInsets.only(top:8.0,left: 8),
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
                                  padding:
                                      const EdgeInsets.only(top: 14, bottom: 8,left: 8.0),
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

              //===>>>starts==>>upper card with gradient/ icon/info about page/what it have /what it do etc
              //
              //
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

              // //  aarogya setu and covin cards in row
              // Container(
              //   height: 700,
              //   width: double.infinity,
              //   child: StreamBuilder(
              //     stream: FirebaseFirestore.instance
              //         .collection('vaccinationCenters')
              //         .snapshots(),
              //     builder: (context, snapshot) {
              //       return !snapshot.hasData
              //           ? Text('PLease Wait')
              //           : GridView.builder(
              //               gridDelegate:
              //                   SliverGridDelegateWithFixedCrossAxisCount(
              //                       crossAxisCount: 2),
              //               itemCount: snapshot.data.docs.length,
              //               itemBuilder: (context, index) {
              //                 print(snapshot.data.docs.length);
              //                 print("=====>");
              //                 DocumentSnapshot vaccineColDocsSnapshot =
              //                     snapshot.data.docs[index];
              //                 return Container(
              //                     height: 270,
              //                     width: 180,
              //                     child: Single_prod(
              //                       prod_pricture1:
              //                           vaccineColDocsSnapshot['name'],
              //                       prod_name: vaccineColDocsSnapshot['url'],
              //                       prod_price: " 3",
              //                       prod_old_price: "d",
              //                       fun: () async {
              //                         await LaunchApp.openApp(
              //                           androidPackageName:
              //                               'nic.goi.aarogyasetu',
              //                           iosUrlScheme: 'pulsesecure://',
              //                           appStoreLink:
              //                               'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
              //                           // openStore: false
              //                         );
              //                       },
              //                     ));
              //               },
              //             );
              //     },
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 270,
                      width: 180,
                      child: Single_prod(
                        prod_pricture1: "assets/Aarogya_Setu_App_Logo.png",
                        prod_name: "Aarogya Setu",
                        prod_price: " 3",
                        prod_old_price: "d",
                        fun: () async {
                          await LaunchApp.openApp(
                            androidPackageName: 'nic.goi.aarogyasetu',
                            iosUrlScheme: 'pulsesecure://',
                            appStoreLink:
                                'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
                            // openStore: false
                          );
                        },
                      )),
                  Container(
                      height: 270,
                      width: 180,
                      child: Single_prod(
                        prod_pricture1: "assets/CoWIN_New_Logo.jpg",
                        prod_name: "Cowin",
                        prod_price: " 3",
                        prod_old_price: "d",
                        fun: () async {
                          if (await canLaunch(
                              "https://selfregistration.cowin.gov.in/")) {
                            await launch(
                                "https://selfregistration.cowin.gov.in/");
                          } else {
                            throw 'Could Not Launch ${"https://selfregistration.cowin.gov.in/"}';
                          }
                        },
                      )),
                ],
              ),

              /// dny card ====== here
              Container(
                width: 500,
                height: 200,
                padding: new EdgeInsets.fromLTRB(
                  0,
                  30.0,
                  0,
                  0,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.black26,
                  child: Column(
                    children: [
                      const ListTile(
                        leading: Icon(
                          Icons.contact_page_rounded,
                          color: Colors.white70,
                          size: 60,
                        ),
                        title: Text(
                          'Hospital Name',
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                        subtitle: Text('Address of Hospital',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white)),
                      ),
                      FlatButton(
                        onPressed: () {},
                        color: Colors.white,
                        //hoverColor: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text('HelpLine'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Single_prod extends StatelessWidget {
  final Function fun;
  final prod_name;
  final prod_pricture1;
  final prod_pricture2;
  final prod_pricture3;
  final prod_old_price;
  final prod_price;
  final prod_brand;
  // final prod_sizes;
  final prod_category;
  final prod_video;
  final prod_id;
  final browUrl;

  Single_prod(
      {this.fun,
      this.prod_name = "",
      this.prod_pricture1,
      this.prod_pricture2,
      this.prod_pricture3,
      this.prod_old_price,
      this.prod_price,
      // this.prod_sizes,
      this.prod_brand,
      this.prod_category,
      this.prod_video,
      this.prod_id,
      this.browUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.indigo[400], width: 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
      elevation: 3,
      child: InkWell(
        onTap: () async {
          fun();
          // Enter thr package name of the App you want to open and for iOS add the URLscheme to the Info.plist file.
          // The second arguments decide wether the app redirects PlayStore or AppStore.
          // For testing purpose you can enter com.instagram.android
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10.0,
                ),
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF58420), width: 0.9),
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(prod_pricture1),
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Flexible(
                child: Text(
                  prod_name,
                  style: TextStyle(fontSize: 14.1, fontWeight: FontWeight.bold),
                ),
              ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1.Open App",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            "2.Go to registration ",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // FlutterYoutube.playYoutubeVideoByUrl(
                              //   apiKey: "AIzaSyD31tcLT3yupwANBz7Wa7K6jRRHZTHI",
                              //   videoUrl: prod_video,
                              // );

                              // Navigator.push(
                              //   context, //here we are passing the values of  product to proddta
                              //   MaterialPageRoute(
                              //       builder: (context) => ProductVideo(
                              //             product_details_video: prod_video,
                              //           )),
                              // );
                            },
                            child: Flexible(
                              child: Container(
                                height: 22.0,
                                width: 22.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Material(
                                  color: Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 22,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                              child: Text(
                            "watch video",
                            style: TextStyle(
                                fontSize: 7, fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                width: 120.0,
                height: 27.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF58420),
                  borderRadius: BorderRadius.circular(12.0),
                  gradient: LinearGradient(
                    colors: <HexColor>[
                      // HexColor(mealsListData.startColor),
                      // HexColor(mealsListData.endColor),
                      HexColor("#F58420"),
                      HexColor("#FCBF95"),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFF58420),
                      // offset: Offset(0.0, 10.0),
                      // spreadRadius: -7.0,
                      // blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Tap to Open',
                        style: TextStyle(fontSize: 10.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Icon starIcon(Color color) {
    return Icon(
      Icons.star,
      size: 10.0,
      color: color,
    );
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
