import 'package:flutter/material.dart';
import 'package:i_post/app/admin/authentication/authentication_view.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Hello World"),
            accountEmail: Text("helloworld@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/google.png"),
            ),
          ),
          ListTile(
            title: Text('Anasayfa'),
            leading: Icon(Icons.home),
            onTap: () {
             Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Admin'),
            leading: Icon(Icons.perm_contact_cal_rounded),
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) =>AuthenticationView ()));
            },
          ),
          ListTile(
            title: Text('Profilim'),
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(Icons.person),
          ),
          Divider(),
          ListTile(
            title: Text('Çıkış yap'),
            onTap: () {
              // _authService.signOut();
              Navigator.pop(context);
            },
            leading: Icon(Icons.remove_circle),
          ),
        ],
      ),
    );
  }
}
