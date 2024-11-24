import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailTwoController = TextEditingController();
  TextEditingController edittextoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: SizeUtils.height,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 108.h,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup32,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 18.h),
                      _buildEmailAndPasswordSection(context),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoSobreAcce406x392,
                    height: 406.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailAndPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "EMAIL",
                    style: CustomTextStyles.titleMediumBlack,
                  ),
                ),
                CustomTextFormField(
                  controller: emailTwoController,
                  contentPadding: EdgeInsets.all(12.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "SENHA",
                    style: CustomTextStyles.titleMediumBlack,
                  ),
                ),
                CustomTextFormField(
                  controller: edittextoneController,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.all(12.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 36.h),
          CustomElevatedButton(
            text: "Continuar",
            margin: EdgeInsets.only(
              left: 58.h,
              right: 56.h,
            ),
          ),
          SizedBox(height: 36.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Não possui conta? Clique ",
                  style: theme.textTheme.bodyLarge,
                ),
                TextSpan(
                  text: "aqui",
                  style: CustomTextStyles.titleMediumBlack_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
