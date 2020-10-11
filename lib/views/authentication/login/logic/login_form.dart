import 'package:TimeTracker/local_db/shared_preference/preferences.dart';
import 'package:TimeTracker/models/user_model.dart';
import 'package:TimeTracker/navigation/navigation_methods.dart';
import 'package:TimeTracker/utils/helpers/validators.dart';
import 'package:TimeTracker/views/home/home_view.dart';
import 'package:flutter/material.dart';

class LoginForm with Validators {
  TextEditingController usernameController  = TextEditingController();
  TextEditingController passwordController  = TextEditingController();

  String get username => usernameController.value.text;
  String get password => passwordController.value.text;

  bool isUsernameValid  = true;
  bool isPasswordValid  = true;

  bool get validatedName      => validString(username);
  bool get validatedPassword  => validPassword(password);

  bool get validatedForm => validatedName && validatedPassword;

  void resetValidators() {
    isUsernameValid  = true;
    isPasswordValid  = true;
  }

  void loginUser(BuildContext context) {
    UserModel newUser = UserModel(userType: 1);
    Preferences.user = newUser;
    NavigationMethods.of(context).navigateAndRemoveUntil(HomeView());
  }
}