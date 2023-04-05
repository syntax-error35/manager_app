import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:manager_app/models/login/login_dm.dart';
import 'package:manager_app/models/login/login_response_dm.dart';
import 'package:manager_app/network/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../user_list/user_list_screen.dart';



class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool isEmail = false;
  Map<String, dynamic> UserCred = {};

   validateEmail(String? val) {
    if (GetUtils.isEmail(val!)) {
      return true;
    } else {
      return false;
    }
  }

  submitLoginData()async {
      UserCred = {
       'email' : emailController.text,
        'password' : passController.text
     };
      try{
        SharedPreferences prefs = await SharedPreferences.getInstance();
        var responseData = await DioClient().postUserCred(UserCred);
        print(responseData);
        LoginDm postLoginData = LoginDm.fromJson(responseData);
        print('Statuscode ${postLoginData.code}');
        prefs.setString('token', postLoginData.access_token ?? '');
       Get.to(() => UserList());

      }catch(e){
        print('Error occured $e');
      }
  }
}
