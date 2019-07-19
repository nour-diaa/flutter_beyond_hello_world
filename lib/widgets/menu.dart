import './my_menu_items.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Theme.of(context).primaryColor,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Placeholder(),
            accountEmail: Text('nourdiaa@gmail.com'),
            accountName: Text('Nour Diaa'),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.white,
          ),
          MyMenuItems(),
        ],
      ),
    ));
  }
}
