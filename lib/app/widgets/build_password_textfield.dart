import 'package:flutter/material.dart';

class BuildPasswordTextField extends StatefulWidget {
  const BuildPasswordTextField({Key? key}) : super(key: key);

  @override
  _BuildPasswordTextFieldState createState() => _BuildPasswordTextFieldState();
}

class _BuildPasswordTextFieldState extends State<BuildPasswordTextField> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _passCont = TextEditingController();
    return TextField(
        style: TextStyle(
          color: Colors.black,
        ),
        cursorColor: Colors.black,
        controller: _passCont,
        obscureText: true,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(
            Icons.vpn_key,
            color: Colors.black,
          ),
          hintText: 'Password',
          prefixText: ' ',
          hintStyle: TextStyle(
            color: Colors.black,
          ),
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
