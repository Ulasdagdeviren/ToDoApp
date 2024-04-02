import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:yourself_in_time_project/common/constants/colors_constants.dart';
import 'package:yourself_in_time_project/common/helpers/text_editing_form_field_helper.dart';
import 'package:yourself_in_time_project/common/widgets/button_navigate_continue.dart';
import 'package:yourself_in_time_project/common/widgets/email_login_widget.dart';
import 'package:yourself_in_time_project/common/widgets/text_field_widget.dart';
import 'package:yourself_in_time_project/ui/login/login_view_model.dart';

Positioned buildWidget(BuildContext context, LoginViewModel model) {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    top: 0,
    child: ListView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        EmailAndPasswordWidget(
          model: model,
          controller: TextEditingControllerHelper(),
        ),
        ButtonNavigateContinue(
          model: model,
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "veya",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            )),
        InkWell(
          splashColor: ColorConstants.buttonnavigateColor.withOpacity(0.4),
          onTap: () {
            model.signInWithGoogle();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 70, right: 70),
            width: MediaQuery.of(context).size.width * 0.7,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.8),
              border: Border.all(
                color: ColorConstants.greyColor,
                width: 1.0,
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/google.png",
                    width: 20,
                  ),
                  SizedBox(width: 8), // İkon ile metin arasına boşluk ekliyoruz
                  Text(
                    'Sign In with Google',
                    style: GoogleFonts.ubuntu(
                        color: ColorConstants.boxShadowColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFieldWidget(
              text: "DON'T HAVE AN ACCOUNT ? ",
              fontSize: 11,
              color: ColorConstants.greyColor,
              fontWeight: FontWeight.bold,
            ),
            GestureDetector(
              onTap: () {
                model.nextRegister();
              },
              child: TextFieldWidget(
                text: " SIGN UP",
                fontSize: 11,
                color: ColorConstants.loginColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Positioned buildJsonAsset(Size size, String asset, double? right, double? top) {
  return Positioned(
    top: top,
    right: right,
    child: Lottie.asset(
      asset,
      height: size.height * 0.1,
      width: size.width,
      fit: BoxFit.cover,
    ),
  );
}
