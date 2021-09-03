import 'package:flutter/material.dart';

class IOSAlertDialogCode extends StatefulWidget {
  static final String id = 'ios_code';
  const IOSAlertDialogCode({Key? key}) : super(key: key);

  @override
  _IOSAlertDialogCodeState createState() => _IOSAlertDialogCodeState();
}

class _IOSAlertDialogCodeState extends State<IOSAlertDialogCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('iOS AlertDialog Code'),
      ),
      body: ListView(
        children: [
          Text('''void _iOSAlert() {
    showDialog(
    context: context,
    builder: (BuildContext context){
    return  CupertinoAlertDialog(
    title: Text('Alert'),
    content: Text('Content'),
    actions: [
    CupertinoDialogAction(
    onPressed:()=>Navigator.of(context).pop(),
    child: Text('Yes')),
    CupertinoDialogAction(
    textStyle: TextStyle(color:Colors.red),
    onPressed:(){
    Navigator.of(context).pop();
    Navigator.pushNamed(context, IOSAlertDialogCode.id);
    },
    child: Text('No'))
    ],

    );
    },);
  }''', style: TextStyle(fontSize: 22),

          )
        ],
      ),
    );
  }
}
