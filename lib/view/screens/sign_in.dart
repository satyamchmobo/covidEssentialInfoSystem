import 'package:covidessen/view/screens/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  GlobalKey <FormState > _formKey = GlobalKey<FormState>();

  final  _email = new TextEditingController();
  final _name= new TextEditingController();
  final _mobileNo= new TextEditingController();
  final _password= new TextEditingController();


  @override


  Widget build(BuildContext context) {
    String log = 'Log';
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(35.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                   Text('Register in to get started',
                     style: TextStyle(fontSize: 20),
                   ),
                   SizedBox(height: 20,),
                   Text('Experience the all new App!',
                     style: TextStyle(fontSize: 15),
                   ),

                  SizedBox(height: 20,),

                  // Name TextField

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 25.0,color: Colors.black26,),
                        hintText: ' Name' ,
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                              Icons.perm_identity,
                              color: Colors.black26,
                              size: 40,
                            ),
                      ),
                      // validator: (value){
                      //   if(value.isEmpty || !RegExp("[a-z A-Z]").hasMatch(value)){
                      //     return "Enter valid Name ";
                      //   }
                      //   return null;

                      // },
                      // onSaved: (value){
                      //   _name.text = value;
                      // },
                    ),
                  ),

                  SizedBox(height: 20,),

        // E-mail ID TextField

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 25.0,color: Colors.black26,),
                        hintText: ' E-mail ID' ,
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      // onSaved: (value) {
                      //   _email.text = value;

                      // },
                      // validator: (value) {
                      //   if (value.isEmpty ||
                      //       !RegExp("[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+\@[a-zA-Z0-9-]+[\.][a-zA-Z0-9-]")
                      //       //!RegExp( r"[a-z A-Z 0-9 _ \-\.]+@ [a-zA-Z]+\.[a-z]{2,3}$")
                      //           .hasMatch(value)) {
                      //     return 'Enter a valid email!';
                      //   }
                      //   return null;
                      // },

                    ),
                  ),

                  SizedBox(height: 20,),

                  // Mobile number Text field

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 25.0,color: Colors.black26,),
                        hintText: ' Mobile Number' ,
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.call,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      // validator: (value) {
                      //   if (value.isEmpty ||
                      //       !RegExp("[ 9 8 ][0-9]{9}")
                      //           .hasMatch(value)) {
                      //     return 'Enter a valid Mobile number!';
                      //   }
                      //   if(value.length != 10){
                      //     return 'Enter a 10 digit  Mobile number!';
                      //   }
                      //   return null;
                      // },

                      // onSaved: (value){
                      //   _mobileNo.text = value;
                      // },
                    ),
                  ),

                  SizedBox(height: 20,),

                  // PIN Text field

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 25.0,color: Colors.black26,),
                        hintText: ' PIN ' ,
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.pin,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      // validator: (value) {
                      //   if (value.isEmpty ||
                      //       !RegExp("[ 9 8 ][0-9]{9}")
                      //           .hasMatch(value)) {
                      //     return 'Enter a valid Mobile number!';
                      //   }
                      //   if(value.length != 10){
                      //     return 'Enter a 10 digit  Mobile number!';
                      //   }
                      //   return null;
                      // },

                      // onSaved: (value){
                      //   _mobileNo.text = value;
                      // },
                    ),
                  ),


                  SizedBox(height: 20,),

                  // password Text field

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText: true,
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 25.0,color: Colors.black26,),
                        hintText: ' Password' ,
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.https,
                          color: Colors.black26,
                          size: 40,
                        ),


                      ),
                      // validator: (value){
                      //   if(value.length >= 6){
                      //     return null;
                      //   }
                      //   return 'Enter password of 6 digit';

                      // },
                      // onSaved: (value){
                      //   _password.text = value;
                      // },




                    ),
                  ),

                  SizedBox(height: 20,),

                  // confirm password text Field

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText:true,
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 25.0,color: Colors.black26,),
                        hintText: ' Confirm Password' ,
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.https,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      // validator: (value){
                      //   if(_password.text = value){
                      //       return "Entered  Password is Not Same.";
                      //   }
                      //   return null;
                      // },
                     // onSaved: (val)=> _password=val,
                    ),
                  ),

                  SizedBox(height: 20,),

                  // Register button

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:   FlatButton(
                        onPressed: (){
                          // if(!_formKey.currentState.validate()){
                          //   return;
                          // }
                          //_formKey.currentState.save();
                          print(_name);
                          print(_mobileNo);
                          print(_password);
                          print(_email);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login( )),);
                          _email.text ="";
                          _password.text ="";
                          _mobileNo.text="";
                          _name.text="";



                        },
                        height: 80,
                        minWidth: 600,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12),
                        ),
                      child: Text(
                          'REGISTER',
                      style:TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                      ),
                  ),

                  ),

                  SizedBox(height: 30,),

                  // Text navigation with Gesture Detector

                  // Center(

                  //   child: Padding(padding: EdgeInsets.all(10),
                  //     child:
                  //       GestureDetector(

                  //         child: Text('Already have an account?${log}',
                  //             style: TextStyle(fontSize: 25.0,color: Colors.black26,),

                  //         ),
                  //         onTap: (){
                  //           validator: 
                  //           Navigator.push(
                  //           context,
                  //           MaterialPageRoute(builder: (context) => Login()),);
                  //         },
                  //       ),
                  //   ),
                  // ),
               ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
