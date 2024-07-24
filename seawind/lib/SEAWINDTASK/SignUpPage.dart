import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import '../../seawind/lib/SEAWINDTASK/PhoneNumber.dart';

import 'package:flutter/material.dart';
import 'package:seawind/SEAWINDTASK/PhoneNumber.dart';

class SignUpPageEvent extends StatefulWidget {
  const SignUpPageEvent({super.key});

  @override
  State<SignUpPageEvent> createState() => _SignUpPageEventState();
}

class _SignUpPageEventState extends State<SignUpPageEvent> {

  bool showpassword = false;

  void showPassword()
  {
    showpassword = !showpassword;
  }

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> SignUp(String username, String email, String password) async
  {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    User? user = userCredential.user!;

    await FirebaseFirestore.instance.collection("User").doc(user.uid).set({
      "username": username,
      "email": email,
      "password": password,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Color.fromARGB(255, 245, 184, 204),
              Colors.white,
              Color.fromARGB(255, 245, 184, 204),
            ],
          ), 
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SIGN UP",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter Username",
                    labelText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Enter Email",
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 50,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: showpassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          showpassword = !showpassword;
                        });
                      }, icon: showpassword ? Icon(Icons.visibility_off) : Icon(Icons.visibility)),
                      hintText: "Enter Password",
                      labelText: 'Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    SignUp(_usernameController.text.toString(), 
                          _emailController.text.toString(), 
                          _passwordController.text.toString(),
                        );
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumberAuthPage(verificationId: '',)));
                }, child: Text("Sign Up")),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumberAuthPage(verificationId: '',)));
                },
                child: Text("Already Signup | LogIn",style: TextStyle(color: Colors.black,fontSize: 14))),
            ],
          ),
        ),
      ),
    );
  }
}