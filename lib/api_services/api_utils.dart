import 'package:flutter/material.dart';

class ApiUtils{
  static const String baseUrl= "https://unt-house-management.onrender.com/unt";
  static const String login="/student/login";
  static const String register="/student/saveStudent";
  //snackbar
  static void showErrorSnackBar(BuildContext context,String message){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content:Text(message),
      backgroundColor: Colors.red,
    ));
  }
  static void showSuccessSnackBar(BuildContext context,String message){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content:Text(message),
      backgroundColor: Colors.green,
    ));
  }
}
