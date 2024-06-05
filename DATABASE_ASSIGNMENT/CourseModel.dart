//import 'package:flutter/material.dart';

class CourseModel
{
  int? id;
  String? name;
  String? course;
  String? coursecode;

  courseMap()
  {
    var mapping = Map<String, dynamic> ();

    mapping ["id"] = id ?? null;
    mapping["name"] = name;
    mapping["course"] = course;
    mapping["coursecode"] = coursecode;

    return mapping;
  }
}