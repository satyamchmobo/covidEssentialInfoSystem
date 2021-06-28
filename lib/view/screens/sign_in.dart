import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidessen/view/screens/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final fb = FirebaseDatabase.instance;
  final myController = TextEditingController();
  final _name = new TextEditingController();
  final _email = new TextEditingController();
  final _mobileNo = new TextEditingController();
  final _password = new TextEditingController();
  final _age = new TextEditingController();
  final _pin = new TextEditingController();
  final _confirm_pass = new TextEditingController();

  void validation() async {
    if (!_formKey.currentState.validate()) {
      print("=============================================");

      print(_name.text);
      print(_mobileNo.text);
      print(_password.text);
      print(_confirm_pass);
      print(_email.text);
      print(_pin.text);
      print(_age.text);
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _email.text, password: _password.text);
        //sleep(Duration.microsecondsPerMillisecond(1000));
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user.uid)
            .set({
          'firstName': _name.text,
          'email': _email.text,
          'Mobile_no': _mobileNo.text,
          'password': _password.text,
          'age': _age.text,
          'PIN': _pin.text,
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }

      _email.text = "";
      _password.text = "";
      _mobileNo.text = "";
      _name.text = "";
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('please Enter all fields correctlty ')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference();
    final log = 'Log';
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
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Register in to get started',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Experience the all new App!',
                    style: TextStyle(fontSize: 15),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Name TextField

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      //  controller: myController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black26,
                        ),
                        hintText: ' Name',
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.perm_identity,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      controller: _name,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Age TextField

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      // controller: myController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter valid age';
                        }
                        return null;
                      },
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black26,
                        ),
                        hintText: ' Age',
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.child_care,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      controller: _age,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // E-mail ID TextField

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please  Enter Email id';
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Please Enter valid Email id';
                        }
                        return null;
                      },
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black26,
                        ),
                        hintText: ' E-mail ID',
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      controller: _email,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Mobile number Text field

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter  Mobile Number.';
                        }
                        if (value.length < 10)
                          return 'Enter  10 digit valid mobile number ';
                        return null;
                      },
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black26,
                        ),
                        hintText: ' Mobile Number',
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.call,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      controller: _mobileNo,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // PIN Text field

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter  PIN.';
                        }
                        if (value.length < 6) return 'Enter  6 digit PIN ';
                        return null;
                      },
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black26,
                        ),
                        hintText: ' PIN ',
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.pin,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      controller: _pin,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // password Text field

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password.';
                        }
                        if (value.length < 5) return 'Enter  5 digit Password ';
                        return null;
                      },
                      obscureText: true,
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black26,
                        ),
                        hintText: ' Password',
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.https,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      controller: _password,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // confirm password text Field

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password Again';
                        }
                        // if(value!=)
                        return null;
                      },
                      obscureText: true,
                      cursorHeight: 35,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black26,
                        ),
                        hintText: ' Confirm Password',
                        enabledBorder: UnderlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.https,
                          color: Colors.black26,
                          size: 40,
                        ),
                      ),
                      // here we have check the condition of the confirm password
                      controller: _confirm_pass,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Register button

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlatButton(
                      onPressed: () async {
                        validation();
                      },
                      height: 80,
                      minWidth: 600,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12),
                      ),
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                 // Text navigation with Gesture Detector

                  Center(

                    child: Padding(padding: EdgeInsets.all(10),
                      child:
                      GestureDetector(
                              onTap: (){
                            validator:
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),);
                          },
                          child: RichText(
                          text: TextSpan(
                            children:[
                            
                            
                                    TextSpan(
                                      text: "Already have an account?",
                                      style: TextStyle(fontSize: 25.0,color: Colors.black26,),
                                    ),
                                    TextSpan(
                                      text: "Login",
                                      style: TextStyle(fontSize: 25.0,color: Colors.blue,decoration: TextDecoration.underline),
                                    ),
                                    
                                  ],
                           ),
                          ),
                      ),
                       
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
