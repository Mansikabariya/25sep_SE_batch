import 'package:flutter/material.dart';

class CityList extends StatefulWidget {
  const CityList({super.key});

  @override
  State<CityList> createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  
  late String SelectedCity;

  void City()
  {
    showDialog(
      context: context, 
      builder: (context)
      {
        return AlertDialog(
          title: Text("Select city"),
          content: ListBody(
            children: [
              ListTile(
                title: Text("Goa"),
                onTap: () {
                  SelectedCity = "Goa";
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Vadodara"),
                onTap: () {
                  SelectedCity = "Vadodara";
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Delhi"),
                onTap: () {
                  SelectedCity = "Delhi";
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Ahmedabad"),
                onTap: () {
                  SelectedCity = "Ahmedabad";
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Mumbai"),
                onTap: () {
                  SelectedCity = "Mumbai";
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
    if(SelectedCity != null)
    {
      ShowCity(context, SelectedCity);
    }
  }

  void ShowCity(context, String city)
  {
    showDialog(
      context: context, 
      builder: ((context) => AlertDialog(
        title: Text("Selected City"),
        content: Text("Your Selected city: $city"),
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: Text("Ok")),
        ],
      )
      ),
    );









    // showDialog(
    //   context: context, 
    //   builder: (context)
    //   {
    //     AlertDialog(
    //       title: Text("Selected City"),
    //       content: Text("Your selected City: $city"),
    //       actions: [
    //         TextButton(onPressed: () {
    //           Navigator.of(context).pop();
    //         }, child: Text("Ok")),
    //       ],
    //     );
    //   },
    // );
    // showDialog(
    //             context: context, 
    //             builder:((context) => AlertDialog(
    //               title: Text("Payment"),
    //               content: Text("Do you want to continue?"),
    //               actions: [
    //                 TextButton(onPressed: () => Navigator.pop(context, 'No'), 
    //                 child: Text("No")),
          
    //                 TextButton(onPressed: () => Navigator.pop(context, 'Yes'), 
    //                 child: Text("Yes")),
                    
    //               ],
    //             )),
    //           );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City List"),
        backgroundColor: const Color.fromARGB(255, 245, 170, 195),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              City();
            },
            child: Text("Select City"),
            ),
            //Text("${SelectedCity}"),
          ],
        ),
      ),
    );
  }
}