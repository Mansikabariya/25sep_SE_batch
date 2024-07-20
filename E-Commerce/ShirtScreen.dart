import 'package:firstfirebase/E-Commerce/SearchScreen.dart';
import 'package:flutter/material.dart';

class ShirtScreen extends StatefulWidget {
  const ShirtScreen({super.key});

  @override
  State<ShirtScreen> createState() => _ShirtScreenState();
}

class _ShirtScreenState extends State<ShirtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
                  },
                  child: Icon(Icons.keyboard_arrow_left_outlined,size: 50,)),
                Container(
                  height: 50,
                  width: 285,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      prefixIcon: Icon(Icons.search_outlined),
                      suffixIcon: Icon(Icons.filter),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}