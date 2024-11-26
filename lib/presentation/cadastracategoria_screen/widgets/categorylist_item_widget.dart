import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class CategoryListItemWidget extends StatelessWidget {
  CategoryListItemWidget({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: CustomRadioButton(
              text: "",
              groupValue: radioGroup,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 4.h,
            ),
            child: Text(
              "Faculdade",
              style: CustomTextStyles.titleSmallErrorContainer,
            ),
          ),
        ),
        Spacer(),
        Text(
          "0",
          style: CustomTextStyles.titleSmallErrorContainer,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMoreVerticalonprimary,
          height: 24.h,
          width: 26.h,
          margin: EdgeInsets.only(left: 16.h),
        ),
      ],
    );
  }
}
