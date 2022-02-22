import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginWithOtherButton extends StatelessWidget {
  final String text;
  final dynamic icon;
  final dynamic color;
  final Function function;
  const LoginWithOtherButton({
    Key? key,
    required this.text,
    this.icon,
    this.color,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => function(),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(color: color, width: 2),
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: _buildLoginWithGoogleButtonRow(text, icon),
            ),
          ),
        ));
  }

  Widget _buildLoginWithGoogleButtonRow(String text, dynamic icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFaIcon(icon),
        SizedBox(
          width: 10,
        ),
        _buildButtonText(text)
      ],
    );
  }

  Widget _buildFaIcon(IconData icon) {
    return FaIcon(
      icon,
      color: Colors.white,
    );
  }

  Widget _buildButtonText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white),
    );
  }
}
