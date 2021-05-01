import 'package:flutter/material.dart';

class VaccineRegis extends StatefulWidget {
  @override
  _VaccineRegisState createState() => _VaccineRegisState();
}

class _VaccineRegisState extends State<VaccineRegis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      print(" covin tapped ===>>>>");
                    },
                    child: Card(
                      child: Container(
                        color: Colors.blue.shade100,
                        height: 100,
                        width: 100,
                        child: Center(child: Text("COWIN")),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                      print(" covin tapped ===>>>>");
                    },
                    

                    child: Card(
                      child: Container(
                        color: Colors.orange.shade100,
                        height: 100,
                        width: 100,
                        child: Center(child: Text("AarogyaSetu")),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
