// To parse this JSON data, do
//
//     final loginResponseDm = loginResponseDmFromJson(jsonString);

import 'dart:convert';

LoginResponseDm loginResponseDmFromJson(String str) => LoginResponseDm.fromJson(json.decode(str));

String loginResponseDmToJson(LoginResponseDm data) => json.encode(data.toJson());

class LoginResponseDm {
  LoginResponseDm({
    required this.code,
    required this.appMessage,
    required this.userMessage,
    required this.accessToken,
    required this.notificationTimeFlag,
    required this.data,
  });

  int code;
  String appMessage;
  String userMessage;
  String accessToken;
  DateTime notificationTimeFlag;
  Data data;

  factory LoginResponseDm.fromJson(Map<String, dynamic> json) => LoginResponseDm(
    code: json["code"],
    appMessage: json["app_message"],
    userMessage: json["user_message"],
    accessToken: json["access_token"],
    notificationTimeFlag: DateTime.parse(json["notificationTimeFlag"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "app_message": appMessage,
    "user_message": userMessage,
    "access_token": accessToken,
    "notificationTimeFlag": notificationTimeFlag.toIso8601String(),
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.image,
    required this.dateOfBirth,
    required this.department,
    required this.designation,
    required this.address,
    required this.notification,
    required this.userType,
    required this.permissions,
  });

  int id;
  String name;
  String email;
  String phoneNumber;
  String image;
  DateTime dateOfBirth;
  Department department;
  String designation;
  String address;
  int notification;
  String userType;
  List<String> permissions;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    phoneNumber: json["phone_number"],
    image: json["image"],
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    department: Department.fromJson(json["department"]),
    designation: json["designation"],
    address: json["address"],
    notification: json["notification"],
    userType: json["user_type"],
    permissions: List<String>.from(json["permissions"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone_number": phoneNumber,
    "image": image,
    "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "department": department.toJson(),
    "designation": designation,
    "address": address,
    "notification": notification,
    "user_type": userType,
    "permissions": List<dynamic>.from(permissions.map((x) => x)),
  };
}

class Department {
  Department({
    required this.id,
    required this.name,
    required this.isActive,
    required this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  int isActive;
  DateTime createdAt;
  dynamic updatedAt;

  factory Department.fromJson(Map<String, dynamic> json) => Department(
    id: json["id"],
    name: json["name"],
    isActive: json["is_active"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "is_active": isActive,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt,
  };
}
