import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manager_app/screens/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  // Widget customContainer( TextEditingController inpController, String ) {
  //   return Container(
  //     child: TextFormField(
  //       controller: inpController,
  //
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.teal.withOpacity(0.8),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login to your account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          validator: (value){
                           var retVal = controller.validateEmail(value);
                           if(retVal) {
                             return null;
                           }
                           else {
                             return 'This Email is not valid';
                           }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.withOpacity(0.5)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: controller.passController,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.withOpacity(0.5)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.submitLoginData();
                    },
                    child: const Text('Sign in'),
                    // style: ButtonStyle(),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
