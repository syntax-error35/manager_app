import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class LoginDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'access_token')
  String? access_token;

  // @JsonKey(name: 'notificationTimeFlag')
  // dynamic notificationTimeFlag;
  //
  // @JsonKey(name: 'data')
  // DataDm? data;

  LoginDm(
      {this.code,
      this.app_message,
      this.user_message,
      this.access_token,
      // this.notificationTimeFlag,
      // this.data
      });

  factory LoginDm.fromJson(Map<String, dynamic> json) {
    return LoginDm(
      code: json['code'] as int?,
      app_message: json['app_message'] as String?,
      user_message: json['user_message'] as String?,
      access_token: json['access_token'] as String?,
      // notificationTimeFlag: DateTime.parse(json['notificationTimeFlag']),
      // data: DataDm.fromJson(jsonDecode(json['data'])),
    );
  }
}

@JsonSerializable()
// class DataDm {
//   @JsonKey(name: 'id')
//   int? id;
//
//   @JsonKey(name: 'name')
//   String? name;
//
//   @JsonKey(name: 'email')
//   String? email;
//
//   @JsonKey(name: 'phone_number')
//   int? phone_number;
//
//   @JsonKey(name: 'image')
//   int? image;
//
//   @JsonKey(name: 'date_of_birth')
//   int? date_of_birth;
//
//   @JsonKey(name: 'department')
//   DeptDm? department;
//
//   @JsonKey(name: 'designation')
//   String? designation;
//
//   @JsonKey(name: 'address')
//   String? address;
//
//   @JsonKey(name: 'notification')
//   int? notification;
//
//   @JsonKey(name: 'user_type')
//   String? user_type;
//
//   @JsonKey(name: 'permissions')
//   List<String>? permissions;
//
//   DataDm(
//       {this.id,
//       this.name,
//       this.email,
//       this.phone_number,
//       this.image,
//       this.date_of_birth,
//       this.department,
//       this.designation,
//       this.address,
//       this.notification,
//       this.user_type,
//       this.permissions});
//
//   factory DataDm.fromJson(Map<String, dynamic> json) {
//     return DataDm(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       phone_number: json['phone_number'],
//       image: json['image'],
//       date_of_birth: json['date_of_birth'],
//       department: DeptDm.fromJson(jsonDecode(json['department'])),
//       designation: json['designation'],
//       address: json['address'],
//       notification: json['notification'],
//       user_type: json['user_type'],
//       permissions: json['permissions'],
//     );
//
//     // id = json['id'];
//     // name = json['name'];
//     // email = json['email'];
//     // phone_number = json['phone_number'];
//     // image = json['image'];
//     // date_of_birth = json['date_of_birth'];
//     // department = json['department'];
//     // designation = json['designation'];
//     // address = json['address'];
//     // notification = json['notification'];
//     // user_type = json['user_type'];
//     // permissions = json['permissions'];
//   }
// }

@JsonSerializable()
class DeptDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'is_active')
  int? is_active;

  @JsonKey(name: 'created_at')
  dynamic created_at;

  @JsonKey(name: 'updated_at')
  dynamic updated_at;

  DeptDm({
    this.id,
    this.name,
    this.is_active,
    this.created_at,
    this.updated_at,
  });

  factory DeptDm.fromJson(Map<String, dynamic> json) {
    return DeptDm(
        id: json['id'],
        name: json['name'],
        is_active: json['is_active'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
    // id = json['id'];
    // name = json['name'];
    // is_active = json['is_active'];
    // created_at = json['created_at'];
    // updated_at = json['updated_at'];
  }
}
