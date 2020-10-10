import 'package:TimeTracker/local_db/shared_preference/preferences.dart';
import 'package:TimeTracker/models/user_model.dart';
import 'package:TimeTracker/navigation/navigation_methods.dart';
import 'package:TimeTracker/utils/helpers/validators.dart';
import 'package:TimeTracker/views/home/home_view.dart';
import 'package:flutter/material.dart';

class RegisterForm with Validators {
  TextEditingController nameController      = TextEditingController();
  TextEditingController lastnameController  = TextEditingController();
  TextEditingController emailController     = TextEditingController();
  TextEditingController phoneController     = TextEditingController();
  TextEditingController passwordController  = TextEditingController();
  TextEditingController documentController  = TextEditingController();
  String userTypeSelected;

  String get name     => nameController.value.text;
  String get lastname => lastnameController.value.text;
  String get email    => emailController.value.text;
  String get phone    => phoneController.value.text;
  String get password => passwordController.value.text;
  String get document => documentController.value.text;

  bool isNameValid      = true;
  bool isLastnameValid  = true;
  bool isEmailValid     = true;
  bool isPhoneValid     = true;
  bool isPasswordValid  = true;
  bool isDocumentValid  = true;

  bool get validatedName      => validString(name);
  bool get validatedLastname  => validString(lastname);
  bool get validatedEmail     => validEmail(email);
  bool get validatedPhone     => validMobileNumber(phone);
  bool get validatedPassword  => validPassword(password);
  bool get validatedDocument  => validString(document);
  bool get validatedUserType  => validString(userTypeSelected);

  bool get validatedForm => validatedName && validatedLastname && validatedEmail && validatedPhone && validatedPassword && validatedDocument && validatedUserType;

  void resetValidators() {
    isNameValid      = true;
    isLastnameValid  = true;
    isEmailValid     = true;
    isPhoneValid     = true;
    isPasswordValid  = true;
    isDocumentValid  = true;
  }

  void createNewUser(BuildContext context) {
    UserModel newUser = UserModel(userType: 0);
    Preferences.user = newUser;
    NavigationMethods.of(context).navigateAndRemoveUntil(HomeView());
  }
}