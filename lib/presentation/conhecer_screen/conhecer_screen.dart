import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/featureslist_item_widget.dart';

class ConhecerScreen extends StatelessWidget {
  const ConhecerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 674.h,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildWelcomeSection(context),
                    _buildFeaturesList(context),
                  ],
                ),
              ),
              SizedBox(height: 38.h),
              _buildContinueButtonSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section: Welcome Section
  Widget _buildWelcomeSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 18.h,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup2,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "BEM VINDO \n\n",
                          style: theme.textTheme.headlineLarge,
                        ),
                        TextSpan(
                          text: "AO DAILY CHECK",
                          style: theme.textTheme.displayMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(height: 118.h),
          ],
        ),
      ),
    );
  }

  /// Section: Features List
  Widget _buildFeaturesList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.h,
        right: 16.h,
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 42.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return const FeaturesListItemWidget();
        },
      ),
    );
  }

  /// Section: Continue Button Section
  Widget _buildContinueButtonSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          CustomElevatedButton(
            width: 232.h,
            text: "CONTINUAR",
            buttonStyle: CustomButtonStyles.outlineErrorContainer,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
