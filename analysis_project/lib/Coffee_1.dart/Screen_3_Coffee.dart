
import 'package:flutter/material.dart';

class Screen_3_Coffee extends StatefulWidget {
  const Screen_3_Coffee({super.key});

  @override
  State<Screen_3_Coffee> createState() => _Screen_3_CoffeeState();
}

class _Screen_3_CoffeeState extends State<Screen_3_Coffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/Chocolate1.jpeg")),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 8),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Chocolate Coffee",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("With Milk   "),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.remove,color: Colors.brown,size: 15,),
                            ),
                            Text("   2  ",style: TextStyle(color: Colors.black),),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.add,color: Colors.brown,size: 15,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 50),
                    Text("@250",style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 8),
                child: Row(
                  children: [
                    Text("Discription",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("It's a simple drink that combines creamy dark\nchocolate and freshly brewed coffee. Feel free\nto use any coffee brand or flavor you enjoy.",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("See More",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Type Of Coffee",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 10),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 35,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.brown,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee_outlined,color: Colors.red,),
                          Text("Hot",style: TextStyle(color: Colors.brown),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 35,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                       
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee_outlined,color: Colors.lightBlue),
                          Text("Cold",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Sugar",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 10),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 35,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.brown,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("30%",style: TextStyle(color: Colors.brown,fontSize: 16),)),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 35,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("40%",style: TextStyle(fontSize: 16,color: Colors.grey),)),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 35,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("50%",style: TextStyle(fontSize: 16,color: Colors.grey),)),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Ice",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 10),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 35,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.brown,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("10%",style: TextStyle(color: Colors.brown,fontSize: 16),)),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 35,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("20%",style: TextStyle(fontSize: 16,color: Colors.grey),)),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 35,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("30%",style: TextStyle(fontSize: 16,color: Colors.grey),)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                          Colors.brown,
                    ),
                  ),
                  onPressed: (){
                
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag,color: Colors.white,),
                    Text(" Add to Cart",style: TextStyle(color: Colors.white),),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}