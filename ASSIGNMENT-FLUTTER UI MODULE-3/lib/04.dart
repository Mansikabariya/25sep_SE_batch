//Create an application  to increase font size when plus button click and decrease when minus button click

import 'package:flutter/material.dart';

class FontSizeChange extends StatefulWidget {
  const FontSizeChange({super.key});

  @override
  State<FontSizeChange> createState() => _FontSizeChangeState();
}

class _FontSizeChangeState extends State<FontSizeChange> {
  double fontsize = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 168, 215, 238),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Font Size Change",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("Hello Mansi!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: fontsize),),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ElevatedButton(onPressed: () {
                    setState(() {
                      fontsize += 2;
                    });
                  }, child: Icon(Icons.add)),
                  SizedBox(width: 300),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      fontsize -= 2;
                    });
                  }, child: Icon(Icons.remove)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}