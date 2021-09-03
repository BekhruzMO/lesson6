import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson6/drawer.dart';
import 'package:lesson6/ios_code.dart';

class AlertDial extends StatefulWidget {
  static final String id = 'alert_dialog';

  const AlertDial({Key? key}) : super(key: key);

  @override
  _AlertDialState createState() => _AlertDialState();
}

class _AlertDialState extends State<AlertDial> {

  void _androidAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context){
      return  AlertDialog(
        title: Text('Alert'),
        content: Text('Content'),
        actions: [
          TextButton(
              onPressed:()=>Navigator.of(context).pop(),
              child: Text('Yes')),
          TextButton(
              onPressed:()=>Navigator.of(context).pop(),
              child: Text('No'))
        ],

      );
    },);
  }
  void _iOSAlert() {
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
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert Dialog'),
          actions: [
            SizedBox(
              //width: 1,

                child: Icon(Icons.add_moderator)),
            SizedBox(width: 50, child: Icon(Icons.add_moderator)),
          ],
        ),
        body: Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.blue)),
                    onPressed: () {

                      _androidAlert();

                    },
                    child: Text('Android AlertDialog',
                      style: TextStyle(color: Colors.white),)),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.blue)),
                    onPressed: () {
                      _iOSAlert();
                    },
                    child: Text('    iOS AlertDialog    ',
                      style: TextStyle(color: Colors.white),)),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.blue)),
                    onPressed: () {
                      Navigator.pushNamed(context, DrawerPage.id);
                    },
                    child: Text('      Drawer Page       ',
                      style: TextStyle(color: Colors.white),)),
              ],
            )
        ));
  }
}





