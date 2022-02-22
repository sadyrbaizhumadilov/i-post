import 'package:flutter/material.dart';

class BuildEmailTextField extends StatefulWidget {
  const BuildEmailTextField({Key? key}) : super(key: key);

  @override
  _BuildEmailTextFieldState createState() => _BuildEmailTextFieldState();
}

class _BuildEmailTextFieldState extends State<BuildEmailTextField> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailCont = TextEditingController();

    return TextField(
        controller: _emailCont,
        style: TextStyle(
          color: Colors.black,
        ),
        cursorColor: Colors.black,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.mail, color: Colors.black),
          hintText: 'e-mail',
          prefixText: ' ',
          hintStyle: TextStyle(color: Colors.black),
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
        ));
  }
}
