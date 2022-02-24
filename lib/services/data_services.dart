import 'dart:convert';
import 'package:flutter/services.dart';

class DataServices{
  String _baseUrl = 'http://flutter.bslmeiyu.com/api/';
  Future<List<dynamic>> getUsers() async {
    var apiUrl = '/billinfo';

    var info = rootBundle.loadString("json/data.json");
    List<dynamic> list = json.decode(await info);
    return Future.delayed(Duration(seconds: 1),
        ()=> list.map((e) => e).toList()
    );

  }
}