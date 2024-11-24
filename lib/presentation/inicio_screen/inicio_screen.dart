import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: SizeUtils.height,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _buildTopBackgroundImage(),
                  _buildBottomBackgroundImage(),
                  _buildLogoAndButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section: Top Background Image
  Widget _buildTopBackgroundImage() {
    return CustomImageView(
      imagePath: ImageConstant.imgVector4,
      height: 388.h,
      width: double.maxFinite,
      radius: BorderRadius.circular(16.h),
      alignment: Alignment.topCenter,
    );
  }

  /// Section: Bottom Background Image
  Widget _buildBottomBackgroundImage() {
    return CustomImageView(
      imagePath: ImageConstant.imgVector3,
      height: 384.h,
      width: double.maxFinite,
      radius: BorderRadius.circular(1.h),
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section: Logo and Continue Button
  Widget _buildLogoAndButton() {
    return Container(
      height: 452.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoSobreAcce,
            height: 452.h,
            width: double.maxFinite,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomElevatedButton(
              width: 232.h,
              text: "CONTINUAR",
              margin: EdgeInsets.only(bottom: 112.h),
              buttonStyle: CustomButtonStyles.outlineErrorContainer,
              buttonTextStyle:
                  CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
