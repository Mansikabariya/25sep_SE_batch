import 'package:flutter/material.dart';
import 'package:analysis_project/Coffee_1.dart/Screen_3_Coffee.dart';

class Screen_2_Coffee extends StatefulWidget {
  const Screen_2_Coffee({super.key});

  @override
  State<Screen_2_Coffee> createState() => _Screen_2_CoffeeState();
}

class _Screen_2_CoffeeState extends State<Screen_2_Coffee> {
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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enjoy your",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                        Row(
                          children: [
                            Text("Morning",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                            Text(" Coffee!!",style: TextStyle(color: Colors.brown,fontSize: 20,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 145),
                    Icon(Icons.notifications_outlined,size: 30,color: Colors.black,),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 260,
                        //color: Colors.white,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            contentPadding: EdgeInsets.all(8.0),
                            filled: true,
                            fillColor: Colors.white,
                            disabledBorder: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search,color: Colors.grey,),
                            hintText: "Search Something",hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(width: 17,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.menu,color: Colors.black,size: 23),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Text("Catagories",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
                      SizedBox(width: 160,),
                      Text("See all",style: TextStyle(color: Colors.brown,fontSize: 16),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Image.asset("assets/images/AllMenu.png"),
                              SizedBox(height: 10),
                              Text("All Menu")
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                           height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              //SizedBox(height: 10),
                              Image.asset("assets/images/Latte.png",height: 60,width: 60,),
                             // SizedBox(height: 10),
                              Text("Latte")
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                           height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              //SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset("assets/images/Mocha.png",height: 60,width: 60,),
                              ),
                             // SizedBox(height: 10),
                              Text("Mocha")
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                           height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              //SizedBox(height: 10),
                              Image.asset("assets/images/Dopio.png",height: 60,width: 60,),
                              //SizedBox(height: 10),
                              Text("Doppio")
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                           height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              //SizedBox(height: 10),
                              Image.asset("assets/images/Iced.png",height: 60,width: 60,),
                              //SizedBox(height: 10),
                              Text("Iced")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
               Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Text("Special Coffee",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
                      SizedBox(width: 120,),
                      Text("See all",style: TextStyle(color: Colors.brown,fontSize: 16),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_3_Coffee()));
                          },
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 150,
                                    width: 190,
                                    decoration: BoxDecoration(
                                      //color: Color.fromARGB(255, 250, 241, 244),
                                      color: const Color.fromARGB(255, 250, 240, 236),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Image.asset("assets/images/Chocolate.png"),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Chocolate Coffee",style: TextStyle(color: Colors.black,fontSize: 16),),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Color.fromARGB(255, 243, 161, 132),size: 16,),
                                            Text("4.3 (105 Reviews)",style: TextStyle(color: Colors.grey),),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Icon(Icons.favorite_border_outlined,color: Colors.brown,),
                                  ],
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20),
                                    Text("@80",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                    Stack(
                                      children: [
                                        Container(
                                          //height: 20,
                                          //width: 40,
                                          //color: Colors.grey,
                                          child: Text("@120",style: TextStyle(color: Colors.grey),),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 40,
                                          //color: Colors.grey,
                                          margin: EdgeInsets.only(bottom: 6,left: 4),
                                          child: Text("_____",style: TextStyle(color: Colors.grey),),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 70),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.brown,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            )
                                          ),
                                          child: Icon(Icons.add,color: Colors.white,),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    //color: Color.fromARGB(255, 250, 241, 244),
                                    color: const Color.fromARGB(255, 250, 240, 236),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset("assets/images/Dopio.png"),
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Dopio Coffee",style: TextStyle(color: Colors.black,fontSize: 16),),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 243, 161, 132),size: 16,),
                                          Text("4.8 (200 Reviews)",style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Icon(Icons.favorite_border_outlined,color: Colors.brown,),
                                ],
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  Text("@80",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                  Stack(
                                    children: [
                                      Container(
                                        //height: 20,
                                        //width: 40,
                                        //color: Colors.grey,
                                        child: Text("@120",style: TextStyle(color: Colors.grey),),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        //color: Colors.grey,
                                        margin: EdgeInsets.only(bottom: 6,left: 4),
                                        child: Text("_____",style: TextStyle(color: Colors.grey),),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 70),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          )
                                        ),
                                        child: Icon(Icons.add,color: Colors.white,),
                                      ),
                                    ],
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
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Text("Special Coffee",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
                      SizedBox(width: 120,),
                      Text("See all",style: TextStyle(color: Colors.brown,fontSize: 16),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    //color: Color.fromARGB(255, 250, 241, 244),
                                    color: const Color.fromARGB(255, 250, 240, 236),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset("assets/images/Latte.png"),
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Latte Coffee",style: TextStyle(color: Colors.black,fontSize: 16),),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 243, 161, 132),size: 16,),
                                          Text("4.9 (250 Reviews)",style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Icon(Icons.favorite_border_outlined,color: Colors.brown,),
                                ],
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  Text("@100",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                  Stack(
                                    children: [
                                      Container(
                                        //height: 20,
                                        //width: 40,
                                        //color: Colors.grey,
                                        child: Text("@130",style: TextStyle(color: Colors.grey),),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        //color: Colors.grey,
                                        margin: EdgeInsets.only(bottom: 6,left: 4),
                                        child: Text("_____",style: TextStyle(color: Colors.grey),),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 70),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          )
                                        ),
                                        child: Icon(Icons.add,color: Colors.white,),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    //color: Color.fromARGB(255, 250, 241, 244),
                                    color: const Color.fromARGB(255, 250, 240, 236),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset("assets/images/Iced.png"),
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Iced Coffee",style: TextStyle(color: Colors.black,fontSize: 16),),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 243, 161, 132),size: 16,),
                                          Text("4.5 (90 Reviews)",style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Icon(Icons.favorite_border_outlined,color: Colors.brown,),
                                ],
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  Text("@60",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                  Stack(
                                    children: [
                                      Container(
                                        //height: 20,
                                        //width: 40,
                                        //color: Colors.grey,
                                        child: Text("@90",style: TextStyle(color: Colors.grey),),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        //color: Colors.grey,
                                        margin: EdgeInsets.only(bottom: 6,left: 4),
                                        child: Text("_____",style: TextStyle(color: Colors.grey),),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 70),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          )
                                        ),
                                        child: Icon(Icons.add,color: Colors.white,),
                                      ),
                                    ],
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
                
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar :BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.brown,),label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,color: Colors.grey,),label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.grey,),label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.grey,),label: " "),
        ],
        selectedLabelStyle: TextStyle(color: Colors.brown),
      ),
    );
  }
}