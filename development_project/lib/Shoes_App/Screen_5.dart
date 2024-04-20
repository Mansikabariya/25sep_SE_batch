import 'package:flutter/material.dart';
import 'package:development_project/Shoes_App/Screen_4.dart';
import 'package:development_project/Shoes_App/Screen_6.dart';

class Screen_5_Shoes extends StatefulWidget {
  const Screen_5_Shoes({super.key});

  @override
  State<Screen_5_Shoes> createState() => _Screen_5_ShoesState();
}

class _Screen_5_ShoesState extends State<Screen_5_Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 233, 232, 232),
            child: Column(
              children: [
                SizedBox(height: 20),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      
                      IconButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen_4_Shoes()));
                      }, icon: Icon(Icons.keyboard_arrow_left_outlined,size: 30,color: Colors.black,)),
                      SizedBox(width: 230),
                      Icon(Icons.favorite_border,size: 25,),
                    ],
                  ),
                ),
                Image.asset("assets/images/Shoes5.png")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 300),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Air Jordan XXXV",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                          Text("Sisterhood",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500)),
                          SizedBox(height: 10),
                          Text("Nike Men's Running Shoes",style: TextStyle(color: Colors.grey,fontSize: 12),),
                        ],
                      ),
                      SizedBox(width: 55),
                      Text("@171,88",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 232, 232),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/Shoes5.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 232, 232),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/AIR3.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 232, 232),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/AIR2.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 232, 232),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/AIR1.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 232, 232),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/AIR4.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Size",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                        SizedBox(width: 190),
                        Text("Size Guide",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(width: 6),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("40",style: TextStyle(color: Colors.white,fontSize: 18),)),
                      ),
                      // SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 232, 232),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("41",style: TextStyle(color: Colors.black,fontSize: 18),)),
                      ),
                      // SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 232, 232),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("41.5",style: TextStyle(color: Colors.black,fontSize: 18),)),
                      ),
                      // SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 232, 232),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("42",style: TextStyle(color: Colors.black,fontSize: 18),)),
                      ),
                      // SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 232, 232),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("42.5",style: TextStyle(color: Colors.black,fontSize: 18),)),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Description",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                      SizedBox(width: 190),
                      Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,size: 30,),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors. black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_6_Shoes()));
                  }, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                      Text("   Add to Cart",style: TextStyle(color: Colors.white),),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}