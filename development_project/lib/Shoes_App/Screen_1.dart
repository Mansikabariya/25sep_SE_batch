import 'package:flutter/material.dart';
import 'package:development_project/Shoes_App/Screen_2.dart';

class Screen_1_Shoes extends StatefulWidget {
  const Screen_1_Shoes({super.key});

  @override
  State<Screen_1_Shoes> createState() => _Screen_1_ShoesState();
}

class _Screen_1_ShoesState extends State<Screen_1_Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/Jump.jpg",height: 800,fit: BoxFit.cover,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 490),
                  Text("Let's improve your",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w500),),
                  Text("appearance",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w500),),
                  SizedBox(height: 15),
                  Text("Find cool shoes to support your daily activities",style: TextStyle(color: Colors.white,fontSize: 14),),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_2_Shoes()));
                    }, child: Text("Get Started",style: TextStyle(color: Colors.black),)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}