import 'package:flutter/material.dart';
import 'package:wallet_flutter_app/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(58, 68, 103, 1),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabsScreen(),
    );
  }
}
