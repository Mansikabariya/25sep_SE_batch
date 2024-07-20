import 'package:firstfirebase/E-Commerce/ItemModel.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List<Item> items = [
    Item(name: "Adidas Bagpack", Image: "assets/images/Bag.png"),
    Item(name: "Red Scarf", Image: "assets/images/Scarf.png"),
    Item(name: "Nike Air Max", Image: "assets/images/BlueShoes.png"),
    ];
  List<Item> filteredItems = [];
  String searchQuery = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredItems = items;
  }

  void updateSearchQuery(String query)
  {
    setState(() {
      searchQuery = query;
      filteredItems = items
          .where((item) => item.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: filteredItems.length,
        itemBuilder: ((context, index) {
        final item = filteredItems[index];
        return ListTile(
          leading: Image.asset(item.Image),
          title: Text(item.name),
        );
      })),

    );
  }
}