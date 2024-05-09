import 'package:flutter/material.dart';

class OptionMenu extends StatefulWidget {
  const OptionMenu({super.key});

  @override
  State<OptionMenu> createState() => _OptionMenuState();
}

class _OptionMenuState extends State<OptionMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Option Menu"),
        backgroundColor: Colors.teal,
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(
              child: Text("Profile"),
              value: "Profile",
              ),
              PopupMenuItem(
                child: Text("Logout"),
                value: "Logout",
              ),
          ],
          icon: Icon(Icons.more_vert),
          onSelected: (value) {
            switch(value)
            {
              case "Profile":
                print("Profile Selected");
                break;
              case "Logout":
                print("Logout Selected");
                break;
            }
            
          },
        )
        ],
      ),
    );
  }
}