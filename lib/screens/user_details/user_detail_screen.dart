import 'package:flutter/material.dart';
import 'package:get/get.dart';
class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height *0.35,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.person,) ,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Email address', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('email',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
