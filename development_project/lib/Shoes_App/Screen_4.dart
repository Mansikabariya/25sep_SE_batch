import 'package:flutter/material.dart';
import 'package:development_project/Shoes_App/Screen_2.dart';
import 'package:development_project/Shoes_App/Screen_5.dart';

class Screen_4_Shoes extends StatefulWidget {
  const Screen_4_Shoes({super.key});

  @override
  State<Screen_4_Shoes> createState() => _Screen_4_ShoesState();
}

class _Screen_4_ShoesState extends State<Screen_4_Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Screen_2_Shoes())));
                    }, icon: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,size: 25,)),
                    SizedBox(width: 45),
                    Text("Running Shoes",style: TextStyle(color: Colors.black,fontSize: 20),),
                    SizedBox(width: 45),
                    Icon(Icons.tune_rounded,color: Colors.black,size: 25,),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                //color: Colors.grey,
                child: 
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: 150,
                            //color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 233, 232, 232),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/Shoes1.png"),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@138.99",style: TextStyle(fontSize: 16),),
                                    SizedBox(width: 10),
                                    IconButton(onPressed: () {
                                      
                                    }, icon: Icon(Icons.favorite_border,size: 20,)),
                                  ],
                                ),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("Kyele 7 EP"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 180,
                          width: 150,
                          //color: Colors.white,
                          child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 233, 232, 232),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/Shoes1.png"),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@138.99",style: TextStyle(fontSize: 16),),
                                    SizedBox(width: 10),
                                    IconButton(onPressed: () {
          
                                    }, icon: Icon(Icons.favorite_border,size: 20,)),
                                  ],
                                ),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("Kyele 7 EP"),
                                  ],
                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                //color: Colors.grey,
                child: 
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: 150,
                            //color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 233, 232, 232),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/AIR1.png"),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@174,99",style: TextStyle(fontSize: 16),),
                                    SizedBox(width: 10),
                                    IconButton(onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_5_Shoes()));
                                    }, icon: Icon(Icons.favorite_border,size: 20,)),
                                  ],
                                ),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("Air Jordan"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 180,
                          width: 150,
                          //color: Colors.white,
                          child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 233, 232, 232),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/Shoes1.png"),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@138.99",style: TextStyle(fontSize: 16),),
                                    SizedBox(width: 10),
                                    IconButton(onPressed: () {
          
                                    }, icon: Icon(Icons.favorite_border,size: 20,)),
                                  ],
                                ),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("Kyele 7 EP"),
                                  ],
                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                //color: Colors.grey,
                child: 
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: 150,
                            //color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 233, 232, 232),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/Shoes1.png"),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@138.99",style: TextStyle(fontSize: 16),),
                                    SizedBox(width: 10),
                                    IconButton(onPressed: () {
          
                                    }, icon: Icon(Icons.favorite_border,size: 20,)),
                                  ],
                                ),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("Kyele 7 EP"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 180,
                          width: 150,
                          //color: Colors.white,
                          child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 233, 232, 232),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/Shoes1.png"),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@138.99",style: TextStyle(fontSize: 16),),
                                    SizedBox(width: 10),
                                    IconButton(onPressed: () {
          
                                    }, icon: Icon(Icons.favorite_border,size: 20,)),
                                  ],
                                ),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("Kyele 7 EP"),
                                  ],
                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                //color: Colors.grey,
                child: 
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: 150,
                            //color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 233, 232, 232),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/Shoes1.png"),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@138.99",style: TextStyle(fontSize: 16),),
                                    SizedBox(width: 10),
                                    IconButton(onPressed: () {
          
                                    }, icon: Icon(Icons.favorite_border,size: 20,)),
                                  ],
                                ),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("Kyele 7 EP"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 180,
                          width: 150,
                          //color: Colors.white,
                          child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 233, 232, 232),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/Shoes1.png"),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@138.99",style: TextStyle(fontSize: 16),),
                                    SizedBox(width: 10),
                                    IconButton(onPressed: () {
          
                                    }, icon: Icon(Icons.favorite_border,size: 20,)),
                                  ],
                                ),
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("Kyele 7 EP"),
                                  ],
                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}