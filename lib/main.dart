import 'package:firstapp/pages/homepage.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily),

      //debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute :(context) => LoginPage(),
      },
    );
  }
}
