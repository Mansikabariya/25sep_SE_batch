import 'package:flutter/material.dart';

class DateSelect extends StatefulWidget {
  const DateSelect({super.key});

  @override
  State<DateSelect> createState() => _DateSelectState();
}

class _DateSelectState extends State<DateSelect> {
DateTime? selectedDate;

Future<void> SelectDate (BuildContext context) async
{
  DateTime? Select = await showDatePicker(
    context: context, 
    //initialDate: selectedDate?? DateTime.now(),
    firstDate: DateTime(1900), 
    lastDate: DateTime(2030),
  );
  if(Select != null && Select == selectedDate)
  {
    setState(() {
      Select = selectedDate;
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Date",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Column(
        
        children: <Widget> [
          
          selectedDate == null ? Text('Selected Date: ${selectedDate!.toLocal()}') : Text("No selected Date"),

          ElevatedButton(onPressed: () => SelectDate(context), 
          child: Text("Select Date")),
          
        ],
      ),
    );
  }
}