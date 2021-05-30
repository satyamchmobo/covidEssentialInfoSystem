import 'dart:io';

import 'dart:math';

import 'package:covidessen/theme/text_styles.dart';
import 'package:covidessen/view/screens/webviewer.dart';
import 'package:flutter/material.dart';
import 'package:covidessen/theme/light_color.dart';
import 'package:url_launcher/url_launcher.dart';

class ListItemCustom extends StatefulWidget {
  final double imageSize;
  final String prodPrice;
  final String prodName;
  final String prodQuant;
  final int funToCalNum;
  final int ind;
  final String imagePath;

  ListItemCustom(
      {this.ind,
      this.imagePath,
      this.prodPrice,
      this.prodName,
      this.prodQuant,
      this.funToCalNum,
      this.imageSize});

  @override
  _ListItemCustomState createState() => _ListItemCustomState(
      ind: ind,
      imagePath: imagePath,
      prodName: prodName,
      prodPrice: prodPrice,
      prodQuant: prodQuant,
      imageSize: imageSize,
      funToCalNum: funToCalNum);
}

class _ListItemCustomState extends State<ListItemCustom> {
  final double imageSize;

  final String prodPrice;
  final String prodName;
  final String prodQuant;
  final int ind;

  final int funToCalNum;
  final String imagePath;

  _ListItemCustomState({
    this.imageSize,
    this.imagePath,
    this.funToCalNum,
    this.ind,
    this.prodPrice,
    this.prodName,
    this.prodQuant,
  });
  Color randomColor() {
    var random = Random();
    final colorList = [
      LightColor.orange,
      LightColor.green,
      LightColor.grey,
      LightColor.lightOrange,
      LightColor.skyBlue,
      LightColor.titleTextColor,
      Colors.red,
      Colors.brown,
      LightColor.purpleExtraLight,
      LightColor.skyBlue,
    ];
    var color = colorList[random.nextInt(colorList.length)];
    return color;
  }

  // final String phone1 = 'tel:+919179772425';
  // final String phone2 = 'tel:+919826853640';
  // final String phone3 = 'tel:+917415585662';

  void _callPhone1(String phone1) async {
    if (await canLaunch(phone1)) {
      await launch(phone1);
    } else {
      throw 'Could not Call Phone';
    }
  }

  void launchStateWebsite(String phone1) async {
    if (await canLaunch(phone1)) {
      await launch(phone1);
    } else {
      throw 'Could not Call Phone';
    }
  }

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
  void launchURL(){
    
  }

// final String phone = 'tel:+1 234 517 8991';

  @override
  Widget build(BuildContext context) {
    // AppBuilder.of(context).rebuild();

    //final DecrementBloc decrementBloc = Provider.of<DecrementBloc>(context);
    //IconData myFeedback = FontAwesomeIcons.sadTear;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 10,
              color: LightColor.grey.withOpacity(.2),
            ),
            BoxShadow(
              offset: Offset(-3, 0),
              blurRadius: 15,
              color: LightColor.grey.withOpacity(.1),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: randomColor(),
                ),
                child: Image.asset(
                  "assets/card2.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(prodName,
                style: TextStyles.title.copyWith(
                    fontWeight: FontWeight.bold,
                    color: LightColor.titleTextColor)),
            subtitle: Expanded(
              child: Row(
                children: [

                 
                  Text(
                    prodQuant.length ==0
                        ? 'Will be updated soon' : prodQuant.length >14 ?prodQuant.toString().substring(0, 14)
                        : prodQuant,
                    style: TextStyles.bodySm.copyWith(
                        fontWeight: FontWeight.bold,
                        color: LightColor.subTitleTextColor),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  // Text(
                  //   "Price : ${prodPrice}",
                  //   style: TextStyles.bodySm.copyWith(fontWeight: FontWeight.bold,color: LightColor.subTitleTextColor),
                  // ),
                ],
              ),
            ),
            trailing: InkWell(
              onTap: funToCalNum == 0
                  ? () async {
                      launchWhatsApp(message: "COVID", phone: prodQuant);
                    }
                  : funToCalNum == 1
                      ? () {
                          // canLaunch('tel:+91-9179772425');
                          _callPhone1('tel:' + prodQuant);
                        }
                      : () {
                          launchStateWebsite(prodQuant);
                        },
              child: Container(
                height: imageSize,
                width: imageSize,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 30, width: 30, child: Image.asset(imagePath)),
                    Text("Tap Here", style: TextStyle(fontSize: 8))
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  navigateToWebView() async {
    await new Future.delayed(const Duration(seconds: 5));

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => Web(url: prodQuant)));
  }
}
