import 'package:development_project/DATABASE_ASSIGNMENT/CourseModel.dart';
import 'package:development_project/DATABASE_ASSIGNMENT/Repository.dart';

class Services
{
  late Repository _repository;

  services()
  {
    _repository = Repository();
  }

  insertService(table, CourseModel courseModel) async
  {
    return await _repository.insertRecord(table, courseModel.courseMap());
  }

  readService(table) async
  {
    return await _repository.fetchRecord(table);
  }

  updateService(table, CourseModel courseModel) async
  {
    return await _repository.updateRecord(table, courseModel.courseMap());
  }

  deleteService(table, CourseModel courseModel) async
  {
    return await _repository.deleteRecord(table, courseModel.courseMap());
  }

}