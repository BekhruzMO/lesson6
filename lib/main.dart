import 'package:flutter/material.dart';
import 'package:lesson6/alert_dialog.dart';
import 'package:lesson6/drawer.dart';
import 'package:lesson6/ios_code.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: AlertDial(),

      routes: {
        AlertDial.id:(context)=> AlertDial(),
        IOSAlertDialogCode.id:(context) =>IOSAlertDialogCode(),
        DrawerPage.id:(context)=>DrawerPage(),
      },
    );
  }
}

