import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:know_our_school/Model/model.dart';

class SchoolViewModel extends ChangeNotifier {
  SchoolData? _schoolData;

  SchoolData? get schoolData => _schoolData;

  Future<void> loadSchoolData() async {
    try {
      Dio dio = Dio();
      final response =
          await dio.get('know_our_school/lib/JSONdata/SchoolData.json');
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.data);
        _schoolData = SchoolData.fromJson(data[0]);
        notifyListeners();
      } else {
        throw Exception("Failed to load data");
      }
    } catch (error) {
      print("Error loading data: $error");
    }
  }
}
