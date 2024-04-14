//create screen

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Card(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 360,
                    width: 490,
                    color: Colors.grey,
                    child: Image.network("https://t4.ftcdn.net/jpg/00/79/99/83/360_F_79998396_BerrcNwY4TdW5pzOZCy7Cwc3MEPeGevH.jpg",fit: BoxFit.cover,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 490,
                    // color: Colors.grey,
                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Oeschinen Lake Campground",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
                                Text("Kandersteg, Switzerland",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 100),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.red,size: 30,),
                              Text("41",style: TextStyle(color: Colors.black,fontSize: 16),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    width: 490,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.call,color: Colors.blue,size: 25,),
                                Text("CALL",style: TextStyle(color: Colors.blue,fontSize: 20),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 90),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.navigation,color: Colors.blue,size: 25,),
                                Text("ROUTE",style: TextStyle(color: Colors.blue,fontSize: 20),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 90),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.share,color: Colors.blue,size: 25,),
                                Text("SHARE",style: TextStyle(color: Colors.blue,fontSize: 20),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 20,
                    width: 490,
                    child: Text("Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps.",style: TextStyle(fontWeight: FontWeight.w400),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}