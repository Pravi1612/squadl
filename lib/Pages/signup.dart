import 'package:flutter/material.dart';
import 'package:squadl/Pages/login.dart';

import '../widgets/Button.dart';
import '../widgets/password.dart';
import '../widgets/textfield.dart';
import 'homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController reEnterPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "SQUADL SIGNUP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                      const SizedBox(height: 15),
                      NormalTextField(
                          controller: username,
                          labelText: "UserName",
                          hintText: "Username"),
                      const SizedBox(
                        height: 15,
                      ),
                      PasswordTextField(
                          controller: password,
                          labelText: "Password",
                          hintText: "Password"),
                      const SizedBox(
                        height: 15,
                      ),
                      PasswordTextField(
                          controller: reEnterPassword,
                          labelText: "Re-enter Password",
                          hintText: "Re-enter Password"),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        child: const Button(
                          buttonText: "SignUp",
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 30,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Already had an account? "),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Login()));
                              },
                              child: Text(
                                "SignIn",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 3, 46, 83),
                                    decoration: TextDecoration.underline),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            )
          ]),
    );
  }
}
