import 'package:flutter/material.dart';
import '../model/user_model.dart';

class Users extends ChangeNotifier {
  List<User> _users = [];

  addUser(User userInfo) {
    _users.add(userInfo);
    notifyListeners();
  }

  listUser() {
    return [..._users];
  }

  deleteUser(int userId) {
    _users.removeAt(userId);
    notifyListeners();
  }

  deleteAllUsers() {
    _users.clear();
    notifyListeners();
  }

  userStatus(bool val) {}
}
