import 'package:flutter/material.dart';
import '../main.dart';
class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavigationState();
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: 'Counter',)),
                );
              }),
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