import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/routes.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/homePage.png"),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 100.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Username", hintText: "Enter User name"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Your Password"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: const Text("Login"),
                      style: TextButton.styleFrom(
                          minimumSize: const Size(100, 50)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}