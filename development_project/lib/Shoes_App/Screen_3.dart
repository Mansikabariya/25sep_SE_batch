import 'package:flutter/material.dart';
import 'package:development_project/Shoes_App/Screen_2.dart';
import 'package:development_project/Shoes_App/Screen_4.dart';

class Screen_3_Shoes extends StatefulWidget {
  const Screen_3_Shoes({super.key});

  @override
  State<Screen_3_Shoes> createState() => _Screen_3_ShoesState();
}

class _Screen_3_ShoesState extends State<Screen_3_Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_2_Shoes()));
              }, icon: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,size: 30,), ),
              SizedBox(height: 30),
              Center(child: Text("NIKE",style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.w600),)),
              Center(child: Text("COLLECTION",style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.w600),)),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_4_Shoes()));
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 230, 230),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Running",style: TextStyle(color: Colors.black,fontSize: 25,),),
                            Text("Shoes",style: TextStyle(color: Colors.black,fontSize: 25,),),
                          ],
                        ),
                        SizedBox(width: 20),
                         Container(
                            height: 180,
                            width: 165,
                            child: Image.asset("assets/images/Running.png",height: 200,width: 140,fit: BoxFit.cover,),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 230, 230),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Basketball",style: TextStyle(color: Colors.black,fontSize: 25,),),
                            Text("Shoes",style: TextStyle(color: Colors.black,fontSize: 25,),),
                          ],
                        ),
                        SizedBox(width: 20),
                         Container(
                            height: 180,
                            width: 160,
                            child: Image.asset("assets/images/BasketBall.png",height: 200,width: 100,fit: BoxFit.cover,),
                          ),
                      ],
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 230, 230),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Training",style: TextStyle(color: Colors.black,fontSize: 25,),),
                            Text("Shoes",style: TextStyle(color: Colors.black,fontSize: 25,),),
                          ],
                        ),
                         SizedBox(width: 20),
                         Container(
                            height: 180,
                            width: 160,
                            child: Image.asset("assets/images/Training.png",height: 180,width: 150,fit: BoxFit.cover,),
                          ),
                      ],
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 230, 230),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Football",style: TextStyle(color: Colors.black,fontSize: 25,),),
                            Text("Shoes",style: TextStyle(color: Colors.black,fontSize: 25,),),
                          ],
                        ),
                         SizedBox(width: 20),
                         Container(
                            height: 180,
                            width: 160,
                            child: Image.asset("assets/images/Football.png",height: 180,width: 150,fit: BoxFit.cover,),
                          ),
                      ],
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}