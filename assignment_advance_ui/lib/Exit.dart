import 'package:flutter/material.dart';

class ExitAlertDialog extends StatefulWidget {
  const ExitAlertDialog({super.key});

  @override
  State<ExitAlertDialog> createState() => _ExitAlertDialogState();
}

class _ExitAlertDialogState extends State<ExitAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exit App"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextButton(onPressed: () {
                showDialog(
                  context: context, 
                  builder:((context) => AlertDialog(
                    title: Text("Exit"),
                    content: Text("Do you want to Exit?"),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context, 'No'), 
                      child: Text("No")),
            
                      TextButton(onPressed: () => Navigator.pop(context, 'Yes'), 
                      child: Text("Yes")),
                      
                    ],
                  )),
                );
            }, child: Text("Exit")),
        ),
      ),
    );
  }
}