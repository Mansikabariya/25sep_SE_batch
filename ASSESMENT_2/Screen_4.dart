import 'package:development_project/ASSESMENT_2/Screen_3.dart';
import 'package:flutter/material.dart';

class Screen_4_Note extends StatefulWidget {
  const Screen_4_Note({super.key});

  @override
  State<Screen_4_Note> createState() => _Screen_4_NoteState();
}

class _Screen_4_NoteState extends State<Screen_4_Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 10,left: 10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_3_Note()));
                }, icon: Icon(Icons.arrow_back,color: Colors.black,),
                ),
                SizedBox(width: 15),
                Text("Heart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                SizedBox(width: 105),
                Icon(Icons.undo,color: Colors.black,),
                SizedBox(width: 20),
                Icon(Icons.redo,color: Colors.black,),
                SizedBox(width: 20),
                Icon(Icons.rotate_90_degrees_ccw,color: Colors.black,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150,left: 10,right: 10),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: Image.asset("assets/images/Heart.jpeg",height: 250,fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}