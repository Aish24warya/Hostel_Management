import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hostelapp/api_services/api_provider.dart';
import 'package:hostelapp/api_services/api_utils.dart';
import 'package:provider/provider.dart';

class ApiCall{
  Future<void> handleLogin(BuildContext context,String email,String password)async{
    final apiProvider=Provider.of<ApiProvider>(context,listen: false);
  final Map<String,dynamic> requestData={
    "emailId":email,
    "password":password,
  };
  final response=await apiProvider.PostResponse(ApiUtils.login,headers:{
    'Content-Type':'application/json',
  },
  body:requestData,
  );
  if (response.statusCode==200){
    final Map<String,dynamic> responseBody=json.decode(response.body);
  if (responseBody['status']=="FAILED"){
    ApiUtils.showErrorSnackBar(context, responseBody['error']);
  }
  final UserResponse userResponse=UserResponse.fromJson(responseBody);
  print("user name:${userResponse.result[0].emailId}");
  print("body:${response.body}");
  }
  }
}
