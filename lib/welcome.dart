import 'package:firebaseapp/signup.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Slash Flutter provides extraordinary flutter tutorials. Do Subscribe!',
              style: TextStyle(fontSize: 17, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Image.network(
              'https://cdn.dribbble.com/userupload/11875883/file/original-1b42c722493113ae563cecca7dedd942.gif',
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Text(
                'Login ',
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signup()
                    ));
              },
              child: Text(
                'Sign up ',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue)),
            ),
          ],
        ));
  }
}
