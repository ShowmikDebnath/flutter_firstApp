import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/login_image.png', fit: BoxFit.cover,),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {

                        });
                      },
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),


              InkWell(
                onTap: () async{
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds:1));
                   Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton? 50: 130,
                  height: 40,
                  // color: Colors.deepPurple,
                  alignment: Alignment.center,
                  child: changeButton?Icon(Icons.done, color: Colors.white,):Text("Login",
                      style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                  ),),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      //shape: changeButton? BoxShape.circle: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(changeButton?50: 8),

                    ),
                ),
              ),
              // ElevatedButton(
              //   onPressed: (){
              //     //print("Hi Coders Hub");
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //
              //   },
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              // )

            ],
          )
      )
    );
  }
}
