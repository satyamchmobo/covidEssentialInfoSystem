import 'dart:math';

import 'package:covidessen/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:covidessen/theme/light_color.dart';


class ListItemCustom extends StatefulWidget {

  final String prodPrice;
  final String prodName;
  final String prodQuant;
  final int ind;

  ListItemCustom({

    this.ind,
    this.prodPrice,
    this.prodName,
    this.prodQuant,
  });

  @override
  _ListItemCustomState createState() => _ListItemCustomState(
        ind: ind,
        prodName: prodName,
        prodPrice: prodPrice,
        prodQuant: prodQuant,
    
      );
}

class _ListItemCustomState extends State<ListItemCustom> {
 
  final String prodPrice;
  final String prodName;
  final String prodQuant;
  final int ind;

  _ListItemCustomState({
 
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
            title: Text(prodName, style: TextStyles.title.copyWith(fontWeight: FontWeight.bold)),
            subtitle: Row(
              children: [
                Text(
                  "Quantity : ${prodQuant}",
                  style: TextStyles.bodySm.copyWith(fontWeight: FontWeight.bold,color: LightColor.subTitleTextColor),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Price : ${prodPrice}",
                  style: TextStyles.bodySm.copyWith(fontWeight: FontWeight.bold,color: LightColor.subTitleTextColor),
                ),
              ],
            ),
            trailing: InkWell(
              onTap: () async {
     
              },
              child: Icon(
                Icons.delete,
                size: 25,
                color: Colors.yellow[800],
              ),
            ),
          ),
        ));
  }
}
