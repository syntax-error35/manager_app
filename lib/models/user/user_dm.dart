import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UserDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'data')
  List<DataDm>? data;

  UserDm(
      {this.code,
        this.app_message,
        this.user_message,
           this.data,
      });

  factory UserDm.fromJson(Map<String, dynamic> json) {
    return UserDm(
      code: json['code'] as int?,
      app_message: json['app_message'] as String?,
      user_message: json['user_message'] as String?,
      // notificationTimeFlag: DateTime.parse(json['notificationTimeFlag']),

      data: List<DataDm>.from(json['data'].map((x) => DataDm.fromJson(x))),
    );
  }
}
class DataDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'phone_number')
  String? phone_number;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'date_of_birth')
  String? date_of_birth;


  @JsonKey(name: 'designation')
  String? designation;

  @JsonKey(name: 'address')
  String? address;

  DataDm(
      {this.id,
      this.name,
      this.email,
      this.phone_number,
      this.image,
      this.date_of_birth,
      this.designation,
      this.address,
     });

  factory DataDm.fromJson(Map<String, dynamic> json) {
    return DataDm(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone_number: json['phone_number'],
      image: json['image'],
      date_of_birth: json['date_of_birth'],
      designation: json['designation'],
      address: json['address'],
    );
  }
}