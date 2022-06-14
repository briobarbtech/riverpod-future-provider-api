import 'dart:convert';

import 'package:riverpod_future_provider_api/features/profile/domain/entities/myuser.dart';

MyUserModel myUserModelFromJson(String str) =>
    MyUserModel.fromJson(json.decode(str));

String myUserModelToJson(MyUserModel data) => json.encode(data.toJson());

class MyUserModel implements MyUser {
  MyUserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
  });

  @override
  int id;
  @override
  String firstName;
  @override
  String lastName;
  @override
  String email;
  @override
  String avatar;

  factory MyUserModel.fromJson(Map<String, dynamic> json) => MyUserModel(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "avatar": avatar,
      };
}
