import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class AcessoScreen extends StatelessWidget {
  const AcessoScreen({Key? key}) : super(key: key);

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
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoSobreAcce452x392,
                    height: 452.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 16.h),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 138.h,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup10,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 14.h),
                        _buildLoginSection(context),
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
  Widget _buildLoginSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomElevatedButton(
            height: 48.h,
            width: 242.h,
            text: "Login",
          ),
          SizedBox(height: 48.h),
          CustomElevatedButton(
            height: 48.h,
            width: 242.h,
            text: "Cadastre-se",
            buttonTextStyle:
                CustomTextStyles.titleMediumOnPrimaryContainerBlack19,
          ),
        ],
      ),
    );
  }
}
