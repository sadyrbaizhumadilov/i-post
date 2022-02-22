import 'package:flutter/material.dart';
import 'package:i_post/app/modules/register_page/register_page_view.dart';
import 'package:i_post/app/widgets/build_email_textfield.dart';
import 'package:i_post/app/widgets/build_password_textfield.dart';
import 'package:i_post/app/widgets/login_button_widget.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({ Key? key }) : super(key: key);

  @override
  _AuthenticationViewState createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AdminView'),
          centerTitle: true,
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
     var size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: size.height * .5,
          width: size.width * .85,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.70),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.75),
                    blurRadius: 10,
                    spreadRadius: 2)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTextFieldColumns(),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    _buildButtonsColumn(),
                    _buildRegisterTextBody()
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldColumns() {
    return Column(
      children: [
        BuildEmailTextField(),
        _buildSpace(),
        BuildPasswordTextField(),
      ],
    );
  }

  Widget _buildSpace() {
     var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.02,
    );
  }

  Widget _buildButtonsColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LoginButton(),
        SizedBox(
          height: 20,
        ),
        _buildSpace(),
      ],
    );
  }

Widget _buildRegisterTextBody() {
    return InkWell(
      onTap: () => _registerFunction(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [_buildDivider(), _buildRegisterText(), _buildDivider()],
      ),
    );
  }
   void _registerFunction() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      width: 75,
      color: Colors.white,
    );
  }

  Widget _buildRegisterText() {
    return Text(
      "Kayıt ol",
      style: TextStyle(color: Colors.white),
    );
  }
}
