import 'package:development_project/ASSESMENT_2/Screen_2.dart';
import 'package:development_project/ASSESMENT_2/Screen_4.dart';
import 'package:development_project/Shoes_App/Screen_3.dart';
import 'package:flutter/material.dart';

class Screen_3_Note extends StatefulWidget {
  const Screen_3_Note({super.key});

  @override
  State<Screen_3_Note> createState() => _Screen_3_NoteState();
}

class _Screen_3_NoteState extends State<Screen_3_Note> {

 List<String> CheckboxTitles = ["Notre Dame de Paris", "Arc de Triomphe", "Musee d'Orsay","Montmartre","Palace of Versallies","Sainte Chapeiie","Eiffel Tower","The Louve","Add Item"];

 List <bool> CheckboxStates = [false, false, false,false, false, false,false, false, false];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 15,right: 15),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_2_Note()));
                }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                Text("Place to visit",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(width: 100),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_4_Note()));
                  },
                  child: Icon(Icons.brush,color: Colors.black,)),
                SizedBox(width: 10),
                Icon(Icons.more_vert,color: Colors.black,),
              ],
            ),
            Expanded(
              child: ListView.builder(
                
                itemCount: CheckboxTitles.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    checkColor: Colors.white,
                    title: Text(CheckboxTitles[index],
                    style: TextStyle(color: Colors.white)),
                    value: CheckboxStates[index], 
                    onChanged: (bool? value) {
                      setState(() {
                        CheckboxStates[index] = value ?? false;
                      });
                    },
                  ); 
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}