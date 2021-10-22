import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String nmae = "";
  bool changedbutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/img2.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50.0,
              child: Text("Welcome $nmae"),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter username",
                      labelText: "username",
                    ),
                    onChanged: (value) {
                      nmae = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter password",
                      labelText: "password",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changedbutton = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 01),
                      width: changedbutton ? 50 : 120,
                      height: 50,
                      alignment: Alignment.center,
                      child: changedbutton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                        shape: changedbutton
                            ? BoxShape.circle
                            : BoxShape.rectangle,
                        color: Colors.teal[300],
                      ),
                    ),
                  ),
                  //ElevatedButton(
                  //child: Text("login"),
                  //style: TextButton.styleFrom(minimumSize: Size(70, 20)),
                  //onPressed: () {
                  //Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //},
                  //),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
