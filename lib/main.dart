import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  var url="https://jsonplaceholder.typicode.com/users/1";
  getPosts(url);
}

getPosts(var url) async{
  var res=await http.get(Uri.parse(url));
  print(jsonDecode(res.body));
}
