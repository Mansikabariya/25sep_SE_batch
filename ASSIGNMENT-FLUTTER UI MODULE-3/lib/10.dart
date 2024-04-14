

import 'package:assignment/11.dart';
import 'package:flutter/material.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 234, 234),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(Icons.arrow_back,color: Colors.black,size: 20),
                  ),
                  SizedBox(width: 250),
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
             // SizedBox(height: 30),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Restaurant",style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.w600),),
                      SizedBox(height: 15),
                      Row(
                       children: [
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 180, 179, 179),
                              borderRadius: BorderRadius.circular(5), 
                            ),
                            child: Center(child: Text("20-30 min",style: TextStyle(color: Colors.white),)),
                          ),
                          Text("  2.4 km",style: TextStyle(color: Colors.grey,fontSize: 16),),
                          Text("  Restaurant",style: TextStyle(color:Colors.grey,fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: 55,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text("R",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 50),)),
                          ),
                      ],
                    ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Orange Sandwiches is delicious",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                  SizedBox(width: 55),
                  Icon(Icons.star_border_outlined,color: Colors.orange),
                  Text("4.7",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Recommend",style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Popular",style: TextStyle(color: Colors.black),)),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Noodles",style: TextStyle(color: Colors.black),)),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Pizza",style: TextStyle(color: Colors.black),)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          //color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/images/SobaSoup.png",height: 100,width: 100,fit: BoxFit.cover,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                SizedBox(height: 20),
                                Text("Soba Soup",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                                SizedBox(width: 66),
                                Icon(Icons.keyboard_arrow_right_outlined,size: 25,color: Colors.black,),
                              ],
                            ),
                            Text("No.1 in sales",style: TextStyle(color: Colors.orangeAccent,fontSize: 13),),
                            Row(
                              children: [
                                Text("@",style: TextStyle(color: Colors.black),),
                                Text("12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          //color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/images/Pharai.png",height: 100,width: 100,fit: BoxFit.cover,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                SizedBox(height: 20),
                                Text("Sei Ua Samun Phrai",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                                //SizedBox(width: 48),
                                Icon(Icons.keyboard_arrow_right_outlined,size: 25,color: Colors.black,),
                              ],
                            ),
                            Text("No.1 in sales",style: TextStyle(color: Colors.grey,fontSize: 13),),
                            Row(
                              children: [
                                Text("@",style: TextStyle(color: Colors.black),),
                                Text("12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 7,left: 8,right: 8,top: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          //color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/images/SobaSoup.png",height: 100,width: 100,fit: BoxFit.cover,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                SizedBox(height: 20),
                                Text("Pasta",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                                SizedBox(width: 100),
                                Icon(Icons.keyboard_arrow_right_outlined,size: 25,color: Colors.black,),
                              ],
                            ),
                            Text("No.1 in sales",style: TextStyle(color: Colors.grey,fontSize: 13),),
                            Row(
                              children: [
                                Text("@",style: TextStyle(color: Colors.black),),
                                Text("12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Restaurant_1()));
                  }, child: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.orangeAccent,
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}