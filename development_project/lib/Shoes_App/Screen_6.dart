import "package:flutter/material.dart";
import "package:development_project/Shoes_App/Screen_5.dart";

class Screen_6_Shoes extends StatefulWidget {
  const Screen_6_Shoes({super.key});

  @override
  State<Screen_6_Shoes> createState() => _Screen_6_ShoesState();
}

class _Screen_6_ShoesState extends State<Screen_6_Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => Screen_5_Shoes())));
                      }, icon: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,size: 25,)),
                      SizedBox(width: 90),
                      Text("Cart",style: TextStyle(color: Colors.black,fontSize: 20),),
                      SizedBox(width: 100),
                      PopupMenuButton(itemBuilder: (context) => [
                      PopupMenuItem(
                               child: Text("Profile"),
                                value: "Profile",
                        ),
                        PopupMenuItem(
                          child: Text("Settings"),
                         value: "Settings",
                        ),
                       ],
                       icon: Icon(Icons.more_vert)),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}