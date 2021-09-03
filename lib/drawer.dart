import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  static final String id = 'drawer';

  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Page'),
      ),
      body: Center(
        child: Text('This page have Drawer'),
      ),
      drawer: Drawer(
        elevation: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              padding: EdgeInsets.fromLTRB(20, 20,10, 10),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              color: Colors.black87,
              height: 120,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child:Expanded(
                      flex:1,
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.yellow,
                        size: 56,),
                    ),

                  ) ,

                  Expanded(
                    flex:4,
                    child: Text('Muhamadov Behruz',
                        style: TextStyle(color: Colors.yellow, fontSize: 28)),
                  )
                ],
              ),

            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10,10, 10),
              //color: Colors.black87,
              height:60,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child:Expanded(
                      flex:1,
                      child: Icon(
                        Icons.add_moderator,
                        color: Colors.black,
                        size: 34,),
                    ),

                  ) ,

                  Expanded(
                    flex:4,
                    child: Text('Security',
                        style: TextStyle(color: Colors.black, fontSize: 28)),
                  )
                ],
              ),

            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10,10, 10),
              //color: Colors.black87,
              height: 60,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child:Expanded(
                      flex:1,
                      child: Icon(
                        Icons.app_settings_alt_sharp,
                        color: Colors.black,
                        size: 34,),
                    ),

                  ) ,

                  Expanded(
                    flex:4,
                    child: Text('Settings2',
                        style: TextStyle(color: Colors.black, fontSize: 28)),
                  )
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
