import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_checkbox_button.dart';

// ignore_for_file: must_be_immutable
class TaskListItemWidget extends StatelessWidget {
  TaskListItemWidget({Key? key})
      : super(key: key);

  bool morevertical = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 2.h,
        right: 6.h,
      ),
      padding: EdgeInsets.all(4.h),
      decoration: BoxDecoration(
        color: appTheme.gray400,
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 24.h,
            width: 26.h,
            decoration: BoxDecoration(
              color: appTheme.gray400,
              borderRadius: BorderRadius.circular(12.h),
            ),
            border: Border.all(
              color: appTheme.gray800,
              width: 2.h,
            ),
          ),
          SizedBox(width: 14.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Utilizar 5 Heurísticas de Nielsen.",
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(
                      "25/09",
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
