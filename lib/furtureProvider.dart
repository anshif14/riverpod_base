import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart'as http;

import 'User model.dart';
final ApiProvider=Provider<ApiClass>((ref) => ApiClass(),);
class ApiClass{
 Future<User> GetApi(){
    String url="https://jsonplaceholder.typicode.com/users/1";
   return http.get(Uri.parse(url)).then((value) {
       return User.fromJson(jsonDecode(value.body));
    },);
  }
}