import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:i_post/app/admin/AddPostAsAdminView/add_post_as_admin_view_view.dart';
import 'package:i_post/app/data/auth_service.dart';


class LoginButton extends StatelessWidget { 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
     final AuthService _authService = AuthService();
   LoginButton({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
   

    // ignore: deprecated_member_use
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(25),
      onPressed: () {
         _authService
        .signIn(_emailController.text, _passwordController.text)
        .then((value) {
      return Navigator.push(context, MaterialPageRoute(builder: (context) => AddPostAsAdmin()));
    }).catchError((dynamic error) {
      if (error.code.contains('invalid-email')) {
        _buildErrorMessage("Mail adresi geçersizdir");
      }
      if (error.code.contains('user-not-found')) {
        _buildErrorMessage("Kullanıcı bulunamadı");
      }
      if (error.code.contains('wrong-password')) {
        _buildErrorMessage("Parola yanlıştır");
      }
    });
      },
      color: Colors.white,
      child: Text(
        'Login ',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
   
void _buildErrorMessage(String text) {
    Fluttertoast.showToast(
        msg: text,
        timeInSecForIosWeb: 2,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey[600],
        textColor: Colors.white,
        fontSize: 14);
  }
}