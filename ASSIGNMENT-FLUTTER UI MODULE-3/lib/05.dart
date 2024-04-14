//Create Login Form

import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 138, 207, 200),
        title: Center(child: Text("Login Form",style: TextStyle(color: Colors.black))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 224, 223, 223),
                  border: UnderlineInputBorder(),
                  hintText: "Enter Username",
                  labelText: "User Name",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 224, 223, 223),
                  border: UnderlineInputBorder(),
                  hintText: "Enter Email Id",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
               ),
            ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 224, 223, 223),
                  border: UnderlineInputBorder(),
                  hintText: "Enter Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: ElevatedButton(onPressed: () {}, 
               child: Text("Login",style: TextStyle(fontSize: 16),),
               ),
             ),
          ],
        ),
      ),
    );
  }
}