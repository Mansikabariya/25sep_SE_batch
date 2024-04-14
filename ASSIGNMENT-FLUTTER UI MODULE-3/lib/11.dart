

import 'package:assignment/10.dart';
import 'package:flutter/material.dart';

class Restaurant_1 extends StatefulWidget {
  const Restaurant_1({super.key});

  @override
  State<Restaurant_1> createState() => _Restaurant_1State();
}

class _Restaurant_1State extends State<Restaurant_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.orangeAccent,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Restaurant()));
                          }, icon: Center(child: Icon(Icons.arrow_back,color: Colors.black,size: 20,))),
                        ),
                        SizedBox(width: 270),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(Icons.search,color: Colors.black,size: 20),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 180),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
              color: Color.fromARGB(255, 238, 234, 234),
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text("Sei Ua Samun Phrai",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.timer_outlined,color: Colors.blue,),
                    Text("50 min",style: TextStyle(color: Colors.black),),
                    SizedBox(width: 30),
                    Icon(Icons.star,color: Color.fromARGB(255, 250, 225, 1),),
                    Text("4.8",style: TextStyle(color: Colors.black),),
                    SizedBox(width: 30),
                    Icon(Icons.local_fire_department,color: Colors.red,),
                    Text("325 Kcal",style: TextStyle(color: Colors.black),),
                  ],
                ),
                SizedBox(height: 40),
                Stack(
                  children: [
                    Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 211, 209, 209),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Text("@",style: TextStyle(color: Colors.black),),
                          Text("12",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 185, 104),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.remove,color: Colors.black,size: 18,),
                          SizedBox(width: 5),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text("1"),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.add,color: Colors.black,size: 18,),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ingredients",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                //color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/Noodle.png",fit: BoxFit.cover,),
                            ),
                            //SizedBox(height: 1),
                            Text("Noodle",style: TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 3),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                //color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/Shrimp.png",fit: BoxFit.cover,),
                            ),
                            SizedBox(height: 5),
                            Text("Shrimp",style: TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height:3),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                //color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/Egg.png",fit: BoxFit.cover,),
                            ),
                            SizedBox(height: 5),
                            Text("Egg",style: TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 3),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                //color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/Scallion.png",fit: BoxFit.cover,),
                            ),
                            SizedBox(height: 5),
                            Text("Scallion",style: TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("About",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("A vibrant Thai sausage made with ground chicken,\nplus its spicy chile dip, from Chef Parnass Sayang\n of Atlanta's Talat Market"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 6),
                                Icon(Icons.shopping_bag_outlined,color: Colors.black,),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 35,top: 6),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(child: Text("1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.only(top: 100,left: 110),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //color: Colors.black,
            ),
            child: Image.asset("assets/images/Pharai-1.png",height: 150,width: 150,),
          ),
        ],
      ),
    );
  }
}