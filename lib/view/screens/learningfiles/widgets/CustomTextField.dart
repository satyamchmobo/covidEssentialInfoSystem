import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

Widget customTextField(
    {TextEditingController dynamicController,
    String hintText,
    List<dynamic> validatorList}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
      //  controller: myController,
      validator: MultiValidator(validatorList),

      cursorHeight: 35,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontSize: 25.0,
          color: Colors.black26,
        ),
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(),
        prefixIcon: Icon(
          Icons.perm_identity,
          color: Colors.black26,
          size: 40,
        ),
      ),
      controller: dynamicController,
    ),
  );
}
