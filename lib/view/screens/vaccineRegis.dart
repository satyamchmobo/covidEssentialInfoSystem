import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class VaccineRegis extends StatefulWidget {
  @override
  _VaccineRegisState createState() => _VaccineRegisState();
}

class _VaccineRegisState extends State<VaccineRegis> {
  Future<void> _launched;
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                        prod_pricture1: "assets/covin.png",
                        prod_name: "Cowin",
                        prod_price: " 3",
                        prod_old_price: "d",
                        fun: () async {
                          if (await canLaunch(
                              "https://www.cowin.gov.in/home")) {
                            await launch("https://www.cowin.gov.in/home");
                          } else {
                            throw 'Could Not Launch ${"https://www.cowin.gov.in/home"}';
                          }
                        },
                      )),
                ],
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
                    fit: BoxFit.cover,
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
                  style: TextStyle(fontSize: 11.1, fontWeight: FontWeight.bold),
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
                                height: 26.0,
                                width: 26.0,
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
                                      size: 19,
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
