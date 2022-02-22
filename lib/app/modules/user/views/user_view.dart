import 'package:flutter/material.dart';
class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
