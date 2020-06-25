import 'package:flutter/material.dart';
class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationState();
  }
}
class NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Flutter Udemy Code Example Suite'
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Stateful Counter'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('First'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}