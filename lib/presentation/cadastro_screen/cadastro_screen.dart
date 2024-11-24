import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CadastroScreen extends StatelessWidget {
  CadastroScreen({Key? key}) : super(key: key);

  final TextEditingController nameInputController = TextEditingController();
  final TextEditingController emailInputController = TextEditingController();
  final TextEditingController passwordInputController = TextEditingController();
  final TextEditingController confirmPasswordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(14.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildProfileImage(),
                  SizedBox(height: 18.h),
                  _buildInputSection(
                    context,
                    title: "NOME",
                    inputBuilder: _buildNameInput,
                  ),
                  SizedBox(height: 18.h),
                  _buildInputSection(
                    context,
                    title: "EMAIL",
                    inputBuilder: _buildEmailInput,
                  ),
                  SizedBox(height: 24.h),
                  _buildInputSection(
                    context,
                    title: "CONFIRME O EMAIL",
                    inputBuilder: _buildConfirmEmailInput,
                  ),
                  SizedBox(height: 20.h),
                  _buildInputSection(
                    context,
                    title: "SENHA",
                    inputBuilder: _buildPasswordInput,
                  ),
                  SizedBox(height: 26.h),
                  _buildInputSection(
                    context,
                    title: "CONFIRME A SENHA",
                    inputBuilder: _buildConfirmPasswordInput,
                  ),
                  SizedBox(height: 38.h),
                  _buildContinueButton(context),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section: Profile Image
  Widget _buildProfileImage() {
    return Container(
      height: 122.h,
      width: 136.h,
      padding: EdgeInsets.only(top: 16.h),
      decoration: BoxDecoration(
        color: appTheme.blueGray5001,
        borderRadius: BorderRadiusStyle.circleBorder66,
        border: Border.all(
          color: appTheme.gray800,
          width: 5.h,
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOut11012dor1,
            height: 70.h,
            width: 74.h,
          ),
        ],
      ),
    );
  }

  /// Section: Input Section
  Widget _buildInputSection(
    BuildContext context, {
    required String title,
    required Widget Function(BuildContext) inputBuilder,
  }) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: CustomTextStyles.titleMediumBlack,
          ),
          SizedBox(height: 4.h),
          inputBuilder(context),
        ],
      ),
    );
  }

  /// Section: Name Input
  Widget _buildNameInput(BuildContext context) {
    return CustomTextFormField(
      controller: nameInputController,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  /// Section: Email Input
  Widget _buildEmailInput(BuildContext context) {
    return CustomTextFormField(
      controller: emailInputController,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  /// Section: Confirm Email Input
  Widget _buildConfirmEmailInput(BuildContext context) {
    return Container(
      height: 44.h,
      width: 300.h,
      decoration: BoxDecoration(
        color: appTheme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray800,
          width: 3.h,
        ),
      ),
    );
  }

  /// Section: Password Input
  Widget _buildPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: passwordInputController,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  /// Section: Confirm Password Input
  Widget _buildConfirmPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: confirmPasswordInputController,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  /// Section: Continue Button
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      height: 38.h,
      text: "Continuar",
      margin: EdgeInsets.symmetric(horizontal: 46.h),
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainerBlack,
    );
  }
}
