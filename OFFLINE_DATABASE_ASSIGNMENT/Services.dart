import 'package:development_project/OFFLINE_DATABASE_ASSIGNMENT/Repository.dart';
import 'package:development_project/OFFLINE_DATABASE_ASSIGNMENT/Studentmodel.dart';

class StudentServices
{
  late Repository _repository;

  //constructor

  StudentServices()
  {
    _repository = Repository(); //initialization
  }

  insertService(table, StudentModel studentModel) async
  {
    return await _repository.insertRecord(table, studentModel.studentMap());
  }

  readService(table) async 
  {
    return await  _repository.fetchRecord(table);
  }

  updateService(table, StudentModel studentModel) async
  {
    return  await _repository.updateRecord(table, studentModel.studentMap());
  }

  deleteService(table, StudentModel studentModel) async
  {
    return  await _repository.deleteRecord(table, studentModel.studentMap());
  }

}