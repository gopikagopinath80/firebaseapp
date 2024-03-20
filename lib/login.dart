import 'package:firebaseapp/signup.dart';
import 'package:firebaseapp/welcome.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Login',
            style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Login to your account',
            style: TextStyle(fontSize: 17, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 60,),
          TextField(
            decoration: InputDecoration(
                labelText: "Email", labelStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width:3,color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Password", labelStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width:3,color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(height: 30,),
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account?',
                style: TextStyle(fontSize: 17,  color: Colors.grey,),
                textAlign: TextAlign.center,
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const Signup()));
              }, child: Text("Sign up")),
            ],
          ),
          SizedBox(height: 10,),
          Image.network(
            'https://static.vecteezy.com/system/resources/previews/001/991/652/original/sign-in-page-flat-design-concept-illustration-icon-account-login-user-login-abstract-metaphor-can-use-for-landing-page-mobile-app-ui-posters-banners-free-vector.jpg', height: 400,width: 450,
          ),
        ],
      ),
    );
  }
}
