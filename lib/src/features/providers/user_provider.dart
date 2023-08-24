import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/src/features/models/users/usermodel.dart';

final userProvider = ChangeNotifierProvider<UserNotifier>(
  (ref) => UserNotifier(),
);

class UserNotifier extends ChangeNotifier {
  User _user = User(
    name: '',
    email: '',
    password: '',
    followers: [],
    following: [],
    profilePic: '',
    uid: '',
    bio: '',
  );
  User get user => _user;
  void setUserModel(User user) {
    _user = user;
  }
}
