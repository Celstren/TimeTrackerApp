import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_scaffold.dart';
import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:TimeTracker/utils/widgets/rounded_button.dart';
import 'package:TimeTracker/utils/widgets/text_field_container.dart';
import 'package:TimeTracker/views/authentication/register/logic/register_form.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  RegisterView({Key key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  RegisterForm _registerForm = RegisterForm();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      onBack: () {
        Navigator.pop(context);
      },
      body: Column(
        children: <Widget>[
          AppSeparator.VerticalSeparator60,
          Center(
            child: Text("Registro",
                style: AppTextStyle.whiteStyle(
                    fontSize: AppFontSizes.title24,
                    decoration: TextDecoration.underline)),
          ),
          AppSeparator.VerticalSeparator40,
          TextFieldContainer(
            controller: _registerForm.nameController,
            label: "Nombres",
            labelStyle: AppTextStyle.greyStyle(),
            borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
          ),
          AppSeparator.VerticalSeparator20,
          TextFieldContainer(
            controller: _registerForm.lastnameController,
            label: "Apellidos",
            labelStyle: AppTextStyle.greyStyle(),
            borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
          ),
          AppSeparator.VerticalSeparator20,
          TextFieldContainer(
            controller: _registerForm.emailController,
            label: "Email",
            labelStyle: AppTextStyle.greyStyle(),
            borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
          ),
          AppSeparator.VerticalSeparator20,
          TextFieldContainer(
            controller: _registerForm.phoneController,
            label: "Celular",
            labelStyle: AppTextStyle.greyStyle(),
            borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
          ),
          AppSeparator.VerticalSeparator20,
          TextFieldContainer(
            controller: _registerForm.documentController,
            label: "Doc. de Identidad",
            labelStyle: AppTextStyle.greyStyle(),
            borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
          ),
          AppSeparator.VerticalSeparator20,
          RoundedButton(
            text: "Registrar",
            onPress: () => _registerForm.createNewUser(context),
          ),
        ],
      ),
    );
  }
}
