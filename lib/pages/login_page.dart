import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/routes.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/homePage.png"),
              Text(
                "Welcome $name",
                style: const TextStyle(fontSize: 20),
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Your Password"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, MyRoutes.homeRoute),
                      child: AnimatedContainer(
                        width: 150,
                        duration: const Duration(seconds: 1),
                        height: 50,
                        alignment: Alignment.center,
                        // color: Colors.deepPurple,
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      
                    )

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: const Text("Login"),
                    //   style: TextButton.styleFrom(
                    //       minimumSize: const Size(100, 50)),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
