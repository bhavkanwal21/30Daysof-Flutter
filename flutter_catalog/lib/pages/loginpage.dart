import 'package:flutter/material.dart';
import 'package:flutter_catalog/Utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          // used to fit in according to different sizes of screen
          child: Column(
            children: [
              Image.asset(
                "assets/Images/login_image.png",
                fit: BoxFit.cover,
                height: 500,
              ),
              Text(
                "Welcome to YogaLifestyle $name",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 48.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                          hintText: " Enter Username",
                          labelText: "Username",
                        ),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: " Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changedButton = true;
                        });

                        await Future.delayed((Duration(seconds: 2)));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 40,
                        width: changedButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changedButton
                            ? Icon(Icons.done)
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 171, 64, 1),
                            shape: changedButton
                                ? BoxShape.circle
                                : BoxShape.rectangle),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    //   },
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
