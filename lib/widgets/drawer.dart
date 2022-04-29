import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    final imageUrl = "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.white54,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  // decoration: BoxDecoration(
                  //   color: Colors.red
                  // ),
                  accountName: Text("Showmik Debnath"),
                  accountEmail: Text("sd@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.deepPurple,),
              title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      color: Colors.deepPurple,
                  ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.deepPurple,),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ),
            ListTile(
              //onTap: ,
              leading: Icon(CupertinoIcons.mail, color: Colors.deepPurple,),
              title: Text(
                "Mail",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


}