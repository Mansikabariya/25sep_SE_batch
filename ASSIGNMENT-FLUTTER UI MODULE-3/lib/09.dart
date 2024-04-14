// create an application to display Textview when checkbox is checked and hide otherwise.


import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  List MyList = [];
  bool? PlayCheck = false;
  bool? ReadCheck = false;
  bool? LearnCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
        backgroundColor: Colors.tealAccent,
      ),
      body: Column(
        children: [
          CheckboxListTile(title: Text("Play"),value: PlayCheck, onChanged: (value) {
            PlayCheck = value;
            if(PlayCheck!)
            {
              MyList.add("Play");
            }
            else
            {
              MyList.remove("Play");
            }
          }),
          //Text("$MyList"),
          ElevatedButton(onPressed: (){
            print(MyList);
          }, child: Text("My List")),
          
        ],
      ),
    );
  }
}