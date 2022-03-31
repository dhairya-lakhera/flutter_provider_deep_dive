import 'package:flutter/material.dart';

class User {
  final String? name;
  final int? age;
  final int? phone;
  bool status;

  User({
    @required this.name,
    @required this.age,
    @required this.phone,
    this.status = false,
  });
}
