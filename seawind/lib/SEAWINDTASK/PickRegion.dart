

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class PickRegionPage extends StatefulWidget {
  final int? countryId;
   PickRegionPage({required this.countryId});

  @override
  State<PickRegionPage> createState() => _PickRegionPageState();
}

class _PickRegionPageState extends State<PickRegionPage> {

 List<dynamic> stateList = [];
 List<dynamic> othercities = [];
  bool isLoading = true; // Track whether data is loading
  int? _isSelectedCityIndex;

  Future<void> fetchData() async {
    try {
      print("------->>> country id : ${widget.countryId}");
      var response = await http.get(Uri.parse("https://www.bme.seawindsolution.ae/api/f/city/${widget.countryId}"));

      var jsonResponse = jsonDecode(response.body);
      setState(() {
        stateList = jsonResponse["responsedata"];
        isLoading = false; 
      });
    } catch (e) {
      print('Error fetching data: $e');
      
      setState(() {
        isLoading = false; 
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,color: Colors.black,)),
                    SizedBox(width: 20),
                  Text("Pick a Region",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
              child: Container(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.pink),
                    suffixIcon: Icon(Icons.location_searching_rounded,color: Colors.pink,),
                    hintText: "Search for your city",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Text("POPULAR CITIES",style: TextStyle(color: Colors.black,fontSize: 20)),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                ), 
                itemCount: stateList.length,
                itemBuilder:(context, index) {
                  final isSelected = index == _isSelectedCityIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelectedCityIndex = index;
                      });
                    },
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: isSelected ? Colors.pink : Colors.black,
                            ),
                          ),
                          child: stateList[index].containsKey("Images")
                                 ? Center(child: CircularProgressIndicator())
                                  : ColorFiltered(
                                    colorFilter: ColorFilter.mode(
                                      isSelected ? Colors.pink : Colors.black, 
                                      BlendMode.saturation,
                                    ),
                                    child: Image.network(stateList[index]["Image"],width: 40,height: 40,fit: BoxFit.cover,),
                                  ),
                        ),
                        SizedBox(height: 5,),
                        Text("${stateList[index]["Title"] ?? " "}",style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  );
                },
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top: 20,left: 20),
               child: Text("OTHER CITIES",style: TextStyle(color: Colors.black,fontSize: 18),),
             ),
            // ListView.builder(
            //   itemCount: othercities.length,
            //   itemBuilder:(context, index) {
            //     return Container(
            //       height: 30,
            //       width: MediaQuery.of(context).size.width,
            //       decoration: BoxDecoration(
            //         border: Border.all(color: Colors.black),
            //         borderRadius: BorderRadius.circular(5),
            //       ),
            //       child: Text(othercities[index]["Title"] ?? " "),                );
            // },)
          ],
        ),
      ),
    );
  }
}