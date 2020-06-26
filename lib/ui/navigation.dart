import 'package:flutter/material.dart';
import '../main.dart';
class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavigationState();
}
class NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text(
                  'Flutter Udemy Code Example Suite'
              ),

            ),
            ListTile(
              title: const Text('Stateful Counter'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                  const MyHomePage(title: 'Counter',)),
                );
              }),
            ListTile(
              title: const Text('First'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
}