import 'package:firstapp/pages/homepage.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    // return MaterialApp(
    //   home: homepage(),
    // );
    return MaterialApp(
      //home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => Homepage(),
        "/login" :(context) => LoginPage(),
      },
    );
  }
}
