
import 'package:firstfirebase/SEAWINDTASK/PickRegion.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class CountryScreenEvent extends StatefulWidget {
  const CountryScreenEvent({super.key});

  @override
  State<CountryScreenEvent> createState() => _CountryScreenEventState();
}

class _CountryScreenEventState extends State<CountryScreenEvent> {

  List<dynamic> myCountryList = [];
  bool isLoading =  false;

  Future<void> fetchData() async
  {
    var response = await http.get(Uri.parse("https://www.bme.seawindsolution.ae/api/f/country"));

    if(response.statusCode == 200)
    {
      var jsonResponse = jsonDecode(response.body);
      setState(() {
          myCountryList = jsonResponse['responsedata'];

      });

    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     fetchData().catchError((error) {
    print('Error fetching data: $error');
    // Handle error condition here, e.g., show a dialog or message
  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              padding: EdgeInsets.all(10),
              itemCount: myCountryList.length,
              itemBuilder: (context, index) {
                final country = myCountryList[index];
                return GestureDetector(
                  onTap: () {
                    // Navigate to CityScreenEvent and pass the country ID
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PickRegionPage(countryId: country['Id']),
                      ),
                    );
                  },
                  child: Card( // Wrap each country item in a Card for visual appeal
                    elevation: 3, // Add some elevation to the card
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        country.containsKey("Image")
                            ? Image.network(
                                country["Image"],
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              )
                            : SizedBox
                                .shrink(), // Render nothing if there's no image
                        SizedBox(height: 10),
                        country.containsKey("Title")
                            ? Text(
                                country["Title"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            : SizedBox.shrink(), // Render nothing if there's no title
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}