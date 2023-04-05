import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manager_app/screens/user_details/user_details_controller.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
        init: UserController(),
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: ListView.builder(
                itemBuilder: (_, index) {
                  return customListTile(
                      count: index,
                      imageUrl: controller.userList[index].image ?? '',
                      name: controller.userList[index].name ?? '',
                      email: controller.userList[index].email ?? '',
                      phone: controller.userList[index].phone_number ?? '');
                },
                itemCount: 10,
              ),
            ),
          );
        });
  }

  Widget customListTile(
      {int? count, String? imageUrl, String? name, String? email, String? phone}) {
    return InkWell(
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Image.network(imageUrl!),
        ),
        title:  Text(name ?? ''),
        subtitle: Text('$email \n $phone'),
        // Text('Phone'),
      ),
      onTap: () {},
    );
  }
}
