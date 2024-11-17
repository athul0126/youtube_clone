import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/sizedboxes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 20, right: 20),
              child: Image.asset(
                "assets/images/youtube-signin.png",
                height: 150,
              ),
            ),
            const Text(
              "Welcome To Youtube",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                child: GestureDetector(
                  onTap: () {
                    print("object");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border:Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/google_logo.png",
                            width: 35,
                          ),
                          w10,
                          const Text(
                            "Sign in with Google",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: Color.fromARGB(255, 128, 126, 126)),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
