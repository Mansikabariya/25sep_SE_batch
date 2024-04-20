import 'package:flutter/material.dart';
import 'package:development_project/Shoes_App/Screen_3.dart';

class Screen_2_Shoes extends StatefulWidget {
  const Screen_2_Shoes({super.key});

  @override
  State<Screen_2_Shoes> createState() => _Screen_2_ShoesState();
}

class _Screen_2_ShoesState extends State<Screen_2_Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                SizedBox(height: 30),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.search,color: Colors.grey,size: 25),
                      hintText: "What are you looking for?",hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.grey,
                        Colors.black,
                      ]
                      ),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text("Nike, Just Do It",style: TextStyle(color: Colors.white),),
                            Text("A HERITAGE",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w600),),
                            Text("OF SPEED",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                      Container(
                        height: 180,
                        width: 150,
                        //color: Colors.white,
                        child: Image.asset("assets/images/Run.png",height: 180,width: 150,fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Color.fromARGB(255, 241, 237, 237),
                              backgroundImage: AssetImage("assets/images/Nike.png"),
                            ),
                            //SizedBox(height: 5),
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_3_Shoes()));
                            }, child: Text("Nike",style: TextStyle(color: Colors.black,fontSize: 16),),)
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Color.fromARGB(255, 241, 237, 237),
                              backgroundImage: AssetImage("assets/images/Reebok.png"),
                            ),
                            //SizedBox(height: 5),
                            TextButton(onPressed: () {

                            }, child: Text("Reebok",style: TextStyle(color: Colors.black,fontSize: 16),),)
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Color.fromARGB(255, 241, 237, 237),
                              backgroundImage: AssetImage("assets/images/Puma.png",),
                            ),
                            //SizedBox(height: 5),
                            TextButton(onPressed: () {

                            }, child: Text("Puma",style: TextStyle(color: Colors.black,fontSize: 16),),)
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Color.fromARGB(255, 241, 237, 237),
                              backgroundImage: AssetImage("assets/images/Adidas.png"),
                            ),
                           // SizedBox(height: 5),
                            TextButton(onPressed: () {

                            }, child: Text("Adidas",style: TextStyle(color: Colors.black,fontSize: 16),),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text("Selected for you",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.black,
                  child: Row(
                  children: [
                    SizedBox(width: 7),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 270,
                          width: 150,
                          //color: Colors.white,
                          child: Column(
                            
                            children: [
                              SizedBox(height: 20),
                              Container(
                                height: 150,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 231, 230, 230),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/images/Shoes1.png",height: 150,width: 130),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Text("@83.81",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 20),
                                    Icon(Icons.favorite_border,size: 20,),
                                  ],
                                ),
                              ),
                              Text("Nike Speed Run",style: TextStyle(color: Colors.black,fontSize: 16),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 270,
                          width: 150,
                          //color: Colors.white,
                          child: Column(
                            
                            children: [
                              SizedBox(height: 20),
                              Container(
                                height: 150,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 231, 230, 230),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/images/Shoes3.png",height: 150,width: 130),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Text("@80.81",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 20),
                                    Icon(Icons.favorite_border,size: 20,),
                                  ],
                                ),
                              ),
                              Text("Adidas Men's",style: TextStyle(color: Colors.black,fontSize: 16),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.black,
                    child: Row(
                    children: [
                      SizedBox(width: 7),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 270,
                            width: 150,
                            //color: Colors.white,
                            child: Column(
                              
                              children: [
                                SizedBox(height: 20),
                                Container(
                                  height: 150,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 231, 230, 230),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset("assets/images/Shoes2.png",height: 150,width: 130),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 10),
                                      Text("@97.86",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                                      SizedBox(width: 20),
                                      Icon(Icons.favorite_border,size: 20,),
                                    ],
                                  ),
                                ),
                                Text("Reebok Classic",style: TextStyle(color: Colors.black,fontSize: 16),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 5),
                      Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 270,
                            width: 150,
                            //color: Colors.white,
                            child: Column(
                              
                              children: [
                                SizedBox(height: 20),
                                Container(
                                  height: 150,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 231, 230, 230),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset("assets/images/Shoes4.png",height: 150,width: 130),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 10),
                                      Text("@83.81",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                                      SizedBox(width: 20),
                                      Icon(Icons.favorite_border,size: 20,),
                                    ],
                                  ),
                                ),
                                Text("Puma Sports",style: TextStyle(color: Colors.black,fontSize: 16),),
                              ],
                            ),
                          ),
                        ],
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