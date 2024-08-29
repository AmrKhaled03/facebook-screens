import 'package:facebook/constants/strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final Map<String, String> info = {'userEmail': "", 'userPassword': ""};

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 300,
                    height: 300,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(150)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.network(
                          "https://i.pinimg.com/474x/b5/9d/15/b59d15f1d09ebd9882cad4a448688aac.jpg",
                          fit: BoxFit.cover,
                        ))),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _email,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Enter Your Email",
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _password,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Enter Your Password",
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          info['userEmail'] = 'kamr4014@icloud.com';
                          info['userPassword'] = 'amr12345';
                          if (_email.text == info['userEmail'] ||
                              _password.text == info['userPassword']) {
                            debugPrint("true");
                            Navigator.pushNamed(context, AppStrings.homeRoute);
                          } else {
                            debugPrint("false");
                          }
                        });
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
