import 'package:TimeTracker/navigation/navigation_methods.dart';
import 'package:TimeTracker/utils/general/app_border_radius.dart';
import 'package:TimeTracker/utils/general/app_font_sizes.dart';
import 'package:TimeTracker/utils/general/app_text_styles.dart';
import 'package:TimeTracker/utils/widgets/app_scaffold.dart';
import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:TimeTracker/utils/widgets/rounded_button.dart';
import 'package:TimeTracker/utils/widgets/text_field_container.dart';
import 'package:TimeTracker/views/authentication/register/register_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
            AppSeparator.VerticalSeparator60,
            SizedBox(
              height: 180,
              width: 180,
              child: Placeholder(),
            ),
            AppSeparator.VerticalSeparator60,
            TextFieldContainer(
              controller: usernameController,
              label: "Email",
              labelStyle: AppTextStyle.greyStyle(),
              borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
            ),
            AppSeparator.VerticalSeparator20,
            TextFieldContainer(
              controller: passwordController,
              label: "Password",
              labelStyle: AppTextStyle.greyStyle(),
              borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
            ),
            AppSeparator.VerticalSeparator50,
            RoundedButton(
              text: "Ingresar",
            ),
            AppSeparator.VerticalSeparator50,
            Text("¿Olvidaste tu contraseña?", style: AppTextStyle.whiteStyle(fontSize: AppFontSizes.text14)),
            AppSeparator.VerticalSeparator20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("¿No tienes cuenta?", style: AppTextStyle.whiteStyle()),
                GestureDetector(
                  onTap: () => NavigationMethods.of(context).navigateTo(RegisterView()),
                  child: Text("Regístrate", style: AppTextStyle.blueLinkStyle(decoration: TextDecoration.underline)),
                ),
              ],
            ),
         ],
       ),
    );
  }
}