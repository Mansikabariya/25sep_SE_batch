//Create custom toolbar as per given below design Create toolbar with spinner and search functionality


import 'package:flutter/material.dart';

class CustomToolbar extends StatefulWidget {
  const CustomToolbar({super.key});

  @override
  State<CustomToolbar> createState() => _CustomToolbarState();
}

class _CustomToolbarState extends State<CustomToolbar> {

  String? selectedItem;

  TextEditingController _SearchController = TextEditingController();

  List Items = ["Pizza", "Burger", "Vadapav", "Dabeli"];
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Toolbar"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          DropdownButton(
            value: selectedItem,
            items: [
              DropdownMenuItem(
                value: 'pizza',
                child: Text("Pizza"),
                ),
                DropdownMenuItem(
                value: 'Burger',
                child: Text("Burger"),
                ),
                DropdownMenuItem(
                value: 'Vadapav',
                child: Text("Vadapav"),
                ),
                DropdownMenuItem(
                value: 'Dabeli',
                child: Text("Dabeli"),
                ),
            ], 
            onChanged: (String? selectedItem) 
            {
              setState(() {
                selectedItem = selectedItem;
              });
            }
          ),
          TextField(
            controller: _SearchController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: "Search",
            ),
            onChanged: (value) {
              _SearchController = _SearchController;
            },
          ),
        ],
      ),
    );
  }
}