import 'package:flutter/material.dart';
import 'package:analysis_project/Coffee_1.dart/Screen_2_Coffee.dart';

class Screen_1_Coffee extends StatefulWidget {
  const Screen_1_Coffee({super.key});

  @override
  State<Screen_1_Coffee> createState() => _Screen_1_CoffeeState();
}

class _Screen_1_CoffeeState extends State<Screen_1_Coffee> {
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
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 245, 187, 166),
                  Colors.white,
                  Color.fromARGB(255, 247, 226, 219),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 70),
                Image.asset("assets/images/Coffee-cup.png",fit: BoxFit.cover,), 
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Get Started",style: TextStyle(color: Colors.brown,fontSize: 18),),
                          SizedBox(height: 10,),
                          Text("Find the best coffee",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
                          Text("for you",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          // color: Colors.brown,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("Skip now")),
                      ),
                      SizedBox(width: 150),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_2_Coffee()));
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text("Next",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}