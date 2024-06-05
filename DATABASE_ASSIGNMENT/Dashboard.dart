import 'package:development_project/DATABASE_ASSIGNMENT/CourseModel.dart';
import 'package:development_project/DATABASE_ASSIGNMENT/EditRecords.dart';
import 'package:development_project/DATABASE_ASSIGNMENT/Services.dart';
import 'package:flutter/material.dart';

class DashboradScreen extends StatefulWidget {
  const DashboradScreen({super.key});

  @override
  State<DashboradScreen> createState() => _DashboradScreenState();
}

class _DashboradScreenState extends State<DashboradScreen> {

  List<CourseModel> courselist = [];
  var courseServices = Services();
  var courseModel = CourseModel();


  
  GetAllRecordsFromCourse() async
  {
    courseServices = Services();
    var allCourses = await courseServices.readService("Courses");

    allCourses.forEach((singleCourse) {
      setState(() {
        courseModel = CourseModel();

        courseModel.id = singleCourse["id"];
        courseModel.name = singleCourse["name"];
        courseModel.course = singleCourse["course"];
        courseModel.coursecode = singleCourse["coursecode"];

        courselist.add(courseModel);
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetAllRecordsFromCourse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Records",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: courselist.length,
        itemBuilder:(context, index) {
          return Card(
            child: ListTile(
              leading: Text("${courselist[index].coursecode}"),
              title: Text("${courselist[index].name}"),
              subtitle: Text("${courselist[index].course}"),
              trailing: Wrap(
                children: [
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditRecords(courseModel: courselist[index],)));
                  }, icon: Icon(Icons.edit)),

                  IconButton(onPressed: () async {
                    print(courselist[index]);
                     var courseServices = Services();
                     var courseModel = CourseModel();

                     courseModel.id = courselist[index].id;
                     var result = await courseServices.deleteService("Courses", courseModel);

                     print(result);
                     courselist = [];
                     GetAllRecordsFromCourse();
                  }, icon: Icon(Icons.delete)),
                ],
              ),
            ),
          );
      },),
    );
  }
}