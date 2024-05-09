import 'package:flutter/material.dart';

class AlertDialogBox extends StatefulWidget {
  const AlertDialogBox({super.key});

  @override
  State<AlertDialogBox> createState() => _AlertDialogBoxState();
}

class _AlertDialogBoxState extends State<AlertDialogBox> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Box"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(40),
          ),
          child: TextButton(onPressed: () {
              showDialog(
                context: context, 
                builder:((context) => AlertDialog(
                  title: Text("Payment"),
                  content: Text("Do you want to continue?"),
                  actions: [
                    TextButton(onPressed: () => Navigator.pop(context, 'No'), 
                    child: Text("No")),
          
                    TextButton(onPressed: () => Navigator.pop(context, 'Yes'), 
                    child: Text("Yes")),
                    
                  ],
                )),
              );
          }, child: Text("Show Dialog")),
        ),
      ),
    );
  }
}