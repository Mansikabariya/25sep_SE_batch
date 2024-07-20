import 'package:firstfirebase/E-Commerce/HomeScreen.dart';
import 'package:flutter/material.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({super.key});

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text("All Categories",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(width: 195),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Myhomescreen()));
                  },
                  child: Icon(Icons.arrow_back,color: Colors.deepOrange,)),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              spreadRadius: 2
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(255, 192, 118, 1),
                              Color.fromRGBO(202, 110, 57, 1),
                              Color.fromRGBO(156, 60, 30, 1),
                            ],
                            ),
                        ),
                        child: Image.asset("assets/images/T-shirt.png",height: 10,),
                      ),
                      Text("Clothes",style: TextStyle(color: Colors.grey,)),
                      SizedBox(height: 15),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          color: Color.fromRGBO(79, 209, 207, 1),
                        ),
                        child: Image.asset("assets/images/Cosmetics.png"),
                      ),
                      Text("Cosmetics",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 15,),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 196, 15, 2),
                              Color.fromARGB(255, 94, 8, 1),
                          ],
                          ),
                        ),
                        child: Image.asset("assets/images/Shoes.png",height: 40,fit: BoxFit.cover,),
                      ),
                      Text("Shoes",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 15),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.deepOrangeAccent,
                              const Color.fromARGB(255, 248, 110, 68),
                              Color.fromARGB(255, 243, 148, 7),
                              Colors.orange,
                            ],
                          )
                        ),
                        child: Image.asset("assets/images/Electronics.png"),
                      ),
                      Text("Electronics",style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 15),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color.fromARGB(255, 209, 188, 2),
                              Color.fromARGB(255, 226, 204, 3),
                              Colors.yellow,
                          ]),
                        ),
                        child: Image.asset("assets/images/Home.png",height: 50,),
                      ),
                      Text("Home",style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 15),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 139, 180, 250),
                              const Color.fromARGB(255, 145, 183, 248),
                              Color.fromARGB(255, 248, 209, 222),
                            ],
                          ),
                        ),
                        child: Image.asset("assets/images/Furniture.png"),
                      ),
                      Text("Furniture",style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 15),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 139, 180, 250),
                              const Color.fromARGB(255, 145, 183, 248),
                              Color.fromARGB(255, 248, 209, 222),
                            ],
                          ),
                        ),
                        child: Image.asset("assets/images/Stationary.png"),
                      ),
                      Text("Stationary",style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Men's Cloathing",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 315,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 2,
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                              ),
                            ]
                          ),
                          child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("T-Shirts",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 110),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   //child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Shirts",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 127),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   //child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Hoods ",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 120),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   //child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Jeans",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 127),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Jackets",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 115),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Sweaters",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 105),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   //child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Socks&Ties",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 90),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Women's Cloathing",style: TextStyle(color: Colors.grey)),
                            SizedBox(height: 5),
                            Container(
                              height: 315,
                              width: 210,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  ),
                                ]
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Blouse",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 120),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Shirts",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 127),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Office Wear",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 90),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Jeans",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 127),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Jackets",style: TextStyle(color: Colors.grey),),
                                          // SizedBox(width: 115),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("T-Shirts",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 115),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //   // child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Dresses",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 115),
                                          // Container(
                                          //   height: 20,
                                          //   width: 20,
                                          //   decoration: BoxDecoration(
                                          //     shape: BoxShape.circle,
                                          //     color: Colors.grey,
                                          //   ),
                                          //    child: Icon(Icons.keyboard_arrow_right_outlined,size: 20,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




