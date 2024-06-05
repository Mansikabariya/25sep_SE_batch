

import 'package:development_project/DATABASE_ASSIGNMENT/CourseModel.dart';
import 'package:development_project/DATABASE_ASSIGNMENT/Dashboard.dart';
import 'package:development_project/DATABASE_ASSIGNMENT/Services.dart';
import 'package:flutter/material.dart';

class EditRecords extends StatefulWidget {
  var courseModel = CourseModel();
EditRecords({required this.courseModel});

  @override
  State<EditRecords> createState() => _EditRecordsState();
}

class _EditRecordsState extends State<EditRecords> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _courseController = TextEditingController();
  TextEditingController _coursecodeController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _nameController.text = widget.courseModel.name!;
      _courseController.text = widget.courseModel.course!;
      _coursecodeController.text = widget.courseModel.coursecode!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Records",style: TextStyle(color: Colors.white),),
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
                controller: _nameController,
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
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 237, 237),
                  hintText: "Enter course Code",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: () async {
                    var courseServices = Services();
                    var courseModel = CourseModel();

            courseModel.id = widget.courseModel.id;
            courseModel.name = _nameController.text.toString();
            courseModel.course = _courseController.text.toString();
            courseModel.coursecode = _coursecodeController.text.toString();

            var result = await courseServices.updateService("Courses", courseModel);
            print(result);
            setState(() {
              _nameController.clear();
              _courseController.clear();
              _coursecodeController.clear();
            });

          }, child: Text("Update")),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboradScreen()));
      }),
    );
  }
}