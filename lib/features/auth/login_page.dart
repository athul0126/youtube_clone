
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Image.asset("assets/images/youtube-signin.jpg",height: 150,),
          ),
          Text("Welcome To Youtube")
        ],
      )),
    );
  }
}