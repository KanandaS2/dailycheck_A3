import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CadastroScreen extends StatelessWidget {
  CadastroScreen({Key? key}) : super(key: key);

  TextEditingController nameInputController = TextEditingController();
  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  TextEditingController confirmPasswordInputController = TextEditingController();

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
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 28.h),
                    child: Column(
                      children: [
                        Container(
                          height: 122.h,
                          width: 136.h,
                          padding: EdgeInsets.only(top: 16.h),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray500,
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
                                imagePath: ImageConstant.imgDoUtilizador1,
                                height: 70.h,
                                width: 74.h,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 4.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "NOME",
                                style: CustomTextStyles.titleMediumBlack,
                              ),
                              _buildNameInput(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(right: 2.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EMAIL",
                                style: CustomTextStyles.titleMediumBlack,
                              ),
                              _buildEmailInput(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(right: 2.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CONFIRME O EMAIL",
                                style: CustomTextStyles.titleMediumBlack,
                              ),
                              SizedBox(height: 2.h),
                              Container(
                                height: 44.h,
                                width: 300.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(10.h),
                                  border: Border.all(
                                    color: appTheme.gray800,
                                    width: 3.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(right: 2.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SENHA",
                                style: CustomTextStyles.titleMediumBlack,
                              ),
                              _buildPasswordInput(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 26.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(right: 4.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CONFIRME A SENHA",
                                style: CustomTextStyles.titleMediumBlack,
                              ),
                              _buildConfirmPasswordInput(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 38.h),
                        _buildContinueButton(context),
                        SizedBox(height: 24.h),
                      ],
                    ),
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
  Widget _buildNameInput(BuildContext context) {
    return CustomTextFormField(
      controller: nameInputController,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return CustomTextFormField(
      controller: emailInputController,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: passwordInputController,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: confirmPasswordInputController,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      height: 38.h,
      text: "Continuar",
      margin: EdgeInsets.only(
        left: 46.h,
        right: 56.h,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainerBlack,
    );
  }
}
