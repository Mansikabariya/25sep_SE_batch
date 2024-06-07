import 'package:development_project/OFFLINE_DATABASE_ASSIGNMENT/DashBoard.dart';
import 'package:development_project/OFFLINE_DATABASE_ASSIGNMENT/MyTextWidget.dart';
import 'package:development_project/OFFLINE_DATABASE_ASSIGNMENT/Services.dart';
import 'package:development_project/OFFLINE_DATABASE_ASSIGNMENT/Studentmodel.dart';
import 'package:flutter/material.dart';

class EditStudentPage extends StatefulWidget {
  var studentModel = StudentModel();
  EditStudentPage({required this.studentModel});

  @override
  State<EditStudentPage> createState() => _EditStudentPageState();
}

class _EditStudentPageState extends State<EditStudentPage> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _marksController = TextEditingController();



 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _nameController.text = widget.studentModel.name!;
      _subjectController.text = widget.studentModel.subject!;
      _marksController.text = widget.studentModel.marks!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Students"),
      ),
      body: Column(
        children: [
          MyTextFieldWidget(controller: _nameController, hint: "Enter your name", lable: "Name"),
          MyTextFieldWidget(controller: _subjectController, hint: "Enter your subject", lable: "Subject"),
          MyTextFieldWidget(controller: _marksController, hint: "Enter your marks", lable: "Marks"),
          ElevatedButton(onPressed: () async {
            var studentModel = StudentModel();   //object creation of  studentModel
            var _studentServices = StudentServices();

            studentModel.id = widget.studentModel.id;
            studentModel.name = _nameController.text.toString();
            studentModel.subject = _subjectController.text.toString();
            studentModel.marks = _marksController.text.toString();

            var result = await _studentServices.updateService("Student",studentModel);
            print("Result = $result");
            setState(() {
              _nameController.clear();
              _subjectController.clear();
              _marksController.clear();
            }); 
          }, child: Text("Update")),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardSqlFlite()));
      },
      child: Icon(Icons.list),
      ),
    );
  }
}