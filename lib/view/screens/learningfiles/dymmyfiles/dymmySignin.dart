// import 'dart:html';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:covidessen/view/screens/Login.dart';
// import 'package:covidessen/view/screens/learningfiles/widgets/CustomTextField.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:form_field_validator/form_field_validator.dart';


// class RegisterDummy extends StatefulWidget {
//   @override
//   _RegisterDummyState createState() => _RegisterDummyState();
// }

// class _RegisterDummyState extends State<RegisterDummy> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   final fb = FirebaseDatabase.instance;
//   final myController = TextEditingController();
//   final _name = new TextEditingController();
//   final _email = new TextEditingController();
//   final _mobileNo = new TextEditingController();
//   final _password = new TextEditingController();
//   final _age = new TextEditingController();
//   final _pin = new TextEditingController();
//   final _confirm_pass = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final ref = fb.reference();
//     final log = 'Log';
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(35.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Text(
//                     'Register in to get started',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'Experience the all new App!',
//                     style: TextStyle(fontSize: 15),
//                   ),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // Name TextField
//                   customTextField(dynamicController: _name, hintText: "Name",validatorList: [
                    
//                       RequiredValidator(errorText: "Name is required"),
//                      // EmailValidator(errorText: "Enter correct email format")
                    
//                   ]),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // Age TextField
//                   customTextField(dynamicController: _age, hintText: "Age",validatorList:[
//                             RequiredValidator(errorText: "Email is required"),
//                             NumberInputElement(),
//                      // EmailValidator(errorText: "Enter correct email format")
//                   ]),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // E-mail ID TextField
//                   customTextField(
//                       dynamicController: _email, hintText: "E-mail ID",validatorList: [
//                                 RequiredValidator(errorText: "Email is required"),
//                       EmailValidator(errorText: "Enter correct email format")
//                       ]),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // Mobile number Text field
//                   customTextField(
//                       dynamicController: _mobileNo, hintText: "Mobile Number",validatorList:[
//                                 RequiredValidator(errorText: "Mobile Number is required"),
//                             NumberInputElement(),

//                       ]),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // PIN Text field
//                   customTextField(dynamicController: _pin, hintText: "PIN",validatorList:[
//                        RequiredValidator(errorText: "PIN is required"),
//                             NumberInputElement(),

//                   ]),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // password Text field
//                   customTextField(
//                       dynamicController: _password, hintText: "Password",validatorList: 
//                       [
//                             RequiredValidator(errorText: "Password is required"),
//                             NumberInputElement(),
//                       ]),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // confirm password text Field
//                   customTextField(
//                       dynamicController: _confirm_pass,
//                       hintText: "Confirm Password",validatorList:[
//                                    RequiredValidator(errorText: "Confirm Password is required"),
//                             NumberInputElement(),
//                       ]),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   // Register button

//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: FlatButton(
//                       onPressed: () async {
//                         if(!_formKey.currentState.validate()){
//                          //_formKey.currentState.save();
//                         print("=============================================");

//                         print(_name.text);
//                         print(_mobileNo.text);
//                         print(_password.text);
//                         print(_confirm_pass);
//                         print(_email.text);
//                         print(_pin.text);
//                         print(_age.text);
//                         try {
//                           UserCredential userCredential = await FirebaseAuth
//                               .instance
//                               .createUserWithEmailAndPassword(
//                                   email: _email.text, password: _password.text);
//                           //sleep(Duration.microsecondsPerMillisecond(1000));
//                           await FirebaseFirestore.instance
//                               .collection('users')
//                               .doc(userCredential.user.uid)
//                               .set({
//                             'firstName': _name.text,
//                             'email': _email.text,
//                             'Mobile_no': _mobileNo.text,
//                             'password': _password.text,
//                             'age': _age.text,
//                             'PIN': _pin.text,
//                           });
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => Login()),
//                           );
//                         } on FirebaseAuthException catch (e) {
//                           if (e.code == 'weak-password') {
//                             print('The password provided is too weak.');
//                           } else if (e.code == 'email-already-in-use') {
//                             print('The account already exists for that email.');
//                           }
//                         } catch (e) {
//                           print(e);
//                         }

                     
//                         }
//                         else{
//                             _email.text = "";
//                         _password.text = "";
//                         _mobileNo.text = "";
//                         _name.text = "";
//                               ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Enter data correctly')));

//                         }
                        
//                       },
//                       height: 80,
//                       minWidth: 600,
//                       color: Colors.blue,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: new BorderRadius.circular(12),
//                       ),
//                       child: Text(
//                         'REGISTER',
//                         style: TextStyle(
//                           fontSize: 40,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(
//                     height: 30,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
