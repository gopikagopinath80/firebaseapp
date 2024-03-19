import 'package:firebaseapp/welcome.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height:50,),
            Text(
              'Sign up',
              style: TextStyle(fontSize: 28,  color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            Text(
              'Create an account.Its free',
              style: TextStyle(fontSize: 17,  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80,),
            TextField(
              decoration:InputDecoration(
                labelText: "Username", labelStyle: TextStyle(color: Colors.black),
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(width:3,color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email", labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width:3,color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Password", labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width:3,color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Confirm Password", labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width:3,color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(height:30, width: 40,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const Welcome()));
              },
              child: Text('Sign Up ',
                style:TextStyle(color:Colors.white),),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.pink),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Alredy have an account?',
                  style: TextStyle(fontSize: 17,  color: Colors.grey,),
                  textAlign: TextAlign.center,
                ),
                TextButton(onPressed: (){}, child: Text("Login")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
