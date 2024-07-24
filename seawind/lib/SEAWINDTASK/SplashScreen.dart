import 'dart:async';


//import '../../seawind/lib/SEAWINDTASK/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:seawind/SEAWINDTASK/SignUpPage.dart';

class SplashscreenEvent extends StatefulWidget {
  const SplashscreenEvent({super.key});

  @override
  State<SplashscreenEvent> createState() => _SplashscreenEventState();
}

class _SplashscreenEventState extends State<SplashscreenEvent> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPageEvent())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
              ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 120,
                  child: Image.network(
                      fit: BoxFit.fill,
                      "https://static.vecteezy.com/system/resources/previews/033/255/652/original/blank-red-color-coupon-ticket-template-png.png"),
                ),
                // Image.asset("assets/images/Ticket.png",height: 10,width: 10,fit: BoxFit.cover,),
                Text("BOOK MY",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w900),),
                Text("EVENT",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}