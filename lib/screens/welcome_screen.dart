import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = "welcome_screen";

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset("images/message-icon-png.png"),
                ),
                Text(
                  "Message App",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff2e386b)),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
                color: Colors.yellow[900]!,
                title: "Sign in",
                onPressed: () {
                  Navigator.pushNamed(context, SigninScreen.screenRoute);
                }),
            MyButton(
                color: Colors.blue[800]!,
                title: "Register",
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.screenRoute);
                })
          ],
        ),
      ),
    );
  }
}
