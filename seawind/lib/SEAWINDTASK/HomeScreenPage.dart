

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreenPageEvent extends StatefulWidget {
  const HomeScreenPageEvent({super.key});

  @override
  State<HomeScreenPageEvent> createState() => _HomeScreenPageEventState();
}

class _HomeScreenPageEventState extends State<HomeScreenPageEvent> {
  List<dynamic> categoryList = [];
  List<dynamic> sliderItems = [];
  bool isLoading = true;
  late PageController _pagecontroller;
  late Timer _timer;
  int _selectedIndex = 0;

  //String selectedLocation = "Mumbai";
  Future<void> fetchData() async {
    try {
      var categoryresponse = await http.get(Uri.parse("https://www.bme.seawindsolution.ae/api/f/category"));
      var sliderresponse = await http.get(Uri.parse("https://www.bme.seawindsolution.ae/api/f/slider"));

      var categoryjsonResponse = jsonDecode(categoryresponse.body);
      var sliderjsonresponse = jsonDecode(sliderresponse.body);

      setState(() {
        categoryList = categoryjsonResponse["responsedata"];
        sliderItems = sliderjsonresponse["responsedata"];
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching data: $e');

      setState(() {
        isLoading = false;
      });
    }

    _timer = Timer.periodic(Duration(seconds: 3), (Timer t) {
      if(_pagecontroller.page == sliderItems.length-1)
      {
        _pagecontroller.animateToPage(
                0, 
                duration: Duration(milliseconds: 500), 
                curve: Curves.easeIn,
              );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
    _pagecontroller = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
    _pagecontroller.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 9, 125),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("BOOK MY\nEVENT",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Column(
                                children: [
                                  Text("Current Location",style: TextStyle(color: Colors.white)),
                                  Text("Mumbai",style: TextStyle(color: Colors.white,fontSize: 16)),
                                ],
                              ),
                            ),
                            SizedBox(width: 35),
                            Icon(Icons.notifications_outlined,color: Colors.white),
                            SizedBox(width: 20),
                            Icon(Icons.menu,color: Colors.white,),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search,color: Colors.pink,),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(child: Text("ListShow",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(child: Text("Offers",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.work,color: Colors.pink,),
                                  Text("Workshop",style: TextStyle(color: Colors.pink)),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.toys,color: Colors.pink,),
                                  Text("Kids",style: TextStyle(color: Colors.pink)),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.masks,color: Colors.pink,),
                                  Text("Comedy",style: TextStyle(color: Colors.pink)),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.music_note,color: Colors.pink,),
                                  Text("Music",style: TextStyle(color: Colors.pink)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      child: isLoading 
                            ? Center(child: CircularProgressIndicator())
                            : PageView.builder(
                        controller: _pagecontroller,
                        itemCount: sliderItems.length,
                        itemBuilder:(context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(sliderItems[index]["Image"] ?? "",fit: BoxFit.cover,)),
                            ),
                          );
                        },
                      ),      
                    ),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(top: 20, left: 20),
               child: Row(
                children: [
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Find New Experience",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                      Text("Engage,Investing,Draft a Plan",style: TextStyle(color: Colors
                      .black,fontSize: 16)),
                    ],
                  ),
                  SizedBox(width: 18),
                  Text("See all >",style: TextStyle(color: Colors.pink,fontSize: 16)),
                ],
               ),
             ),
             Container(
              height: 200,
              width: 400,
              child: isLoading
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder:(context, index) {
                        return Padding(padding: EdgeInsets.all(8),
                           child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(categoryList[index]["Image"] ?? " ",height: 50,width: 180,fit: BoxFit.cover,),
                            ),
                           ),
                          );
                    },)
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PREMIERE",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                      Text("Watch new popular events",style: TextStyle(fontSize: 16,color: Colors.black)),
                    ],
                  ),
                  SizedBox(width: 35),
                  Text("See all >",style: TextStyle(color: Colors.pink,fontSize: 16)),
                ],
               ),
             ),
             SizedBox(height: 20),
             Container(
              height: 200,
              width: 400,
              child: isLoading ? Center(child: CircularProgressIndicator())
                               : PageView.builder(
                                  itemCount: categoryList.length,
                                  itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                          //child: Image.network(categoryList[index]["Hid_Image"] ?? " ",fit: BoxFit.cover,),
                                        ),
                                      );
                               },)
             ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.event),label: "Event"),
            BottomNavigationBarItem(icon: Icon(Icons.view_list),label: "Listshow"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        selectedLabelStyle: TextStyle(color: Colors.pink),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}



