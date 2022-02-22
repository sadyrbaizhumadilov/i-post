import 'package:flutter/material.dart';
import 'package:i_post/app/admin/AddPostAsAdminView/add_post_as_admin_view_view.dart';
import 'package:i_post/app/modules/post_list_page/post_list_page_view.dart';
import 'package:i_post/app/widgets/drawer_widget.dart';


class PostPageView extends StatelessWidget {
  @override
  // AuthService _authService = AuthService();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => (AddPostAsAdmin())));
          },
          child: Icon(Icons.add),
        ),
        drawer: DrawerWidget(),
        body: PostListPageView());
  }
}
