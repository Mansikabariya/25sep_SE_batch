import 'package:development_project/DATABASE_ASSIGNMENT/CourseModel.dart';
import 'package:development_project/DATABASE_ASSIGNMENT/Dashboard.dart';
import 'package:development_project/DATABASE_ASSIGNMENT/Services.dart';
import 'package:flutter/material.dart';

class AddRecords extends StatefulWidget {
  const AddRecords({super.key});

  @override
  State<AddRecords> createState() => _AddRecordsState();
}

class _AddRecordsState extends State<AddRecords> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _courseController = TextEditingController();
  TextEditingController _coursecodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Records",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 237, 237),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _courseController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 237, 237),
                  hintText: "Enter Course",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _coursecodeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 237, 237),
                  hintText: "Enter Course code",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: () async {
              var courseModel = CourseModel();
              var _courseServices = Services();

              courseModel.name = _nameController.text.toString();
              courseModel.course = _courseController.text.toString();
              courseModel.coursecode = _coursecodeController.text.toString();

              var result = await _courseServices.insertService("Courses", courseModel);

              print("Result : $result");

              setState(() {
                _nameController.clear();
                _courseController.clear();
                _coursecodeController.clear();
              }); 
          }, child: Text("Submit")),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboradScreen()));
      },
      child: Icon(Icons.list),
      ),
    );
  }
}