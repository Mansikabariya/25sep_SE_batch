import 'package:development_project/ASSESMENT_2/Screen_2.dart';
import 'package:development_project/ASSESMENT_2/Screen_3.dart';
import 'package:development_project/ASSESMENT_2/Screen_4.dart';
import 'package:flutter/material.dart';

class Screen_1_Note extends StatefulWidget {
  const Screen_1_Note({super.key});

  @override
  State<Screen_1_Note> createState() => _Screen_1_NoteState();
}

class _Screen_1_NoteState extends State<Screen_1_Note> {

  List dataList = [Screen_2_Note(), Screen_3_Note(), Screen_4_Note()];
 int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,),
        title: Text("Notebook",style: TextStyle(color: Colors.black),),
        actions: [
          Icon(Icons.search,color: Colors.black,),
          SizedBox(width: 20),
          Icon(Icons.add,color: Colors.black,),
          SizedBox(width: 10),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(top: 25,left: 20,right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_2_Note()));
                      },
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/Travel.jpeg")),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("Travel",style: TextStyle(color: Colors.black,fontSize: 20),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/Ideas.jpeg",height: 200,fit: BoxFit.cover,)),
                      ),
                      SizedBox(height: 15),
                      Text("Ideas",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/Books.jpeg",height: 200,fit: BoxFit.cover,)),
                      ),
                      SizedBox(height: 15),
                      Text("Books",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/Recipe.jpeg",height: 200,fit: BoxFit.cover,)),
                        ),
                        SizedBox(height: 15),
                        Text("Recipes",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          dataList = [selectedIndex];
          setState(() {
            
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        //currentIndex: selectedIndex!,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.edit,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.mic,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.camera_enhance,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.check_box,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz,color: Colors.white,),label: ""),
        ]
      ),
    );
  }
}