import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../core/utils/size_utils.dart';

class TaskCategoryListItemWidget extends StatelessWidget {
  const TaskCategoryListItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadiusStyle.roundedBorder10,
        border: Border.all(
          color: appTheme.gray800,
          width: 3.h,
        ),
      ),
      child: Text(
        "Escola",
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: CustomTextStyles.titleSmallErrorContainer1,
      ),
    );
  }
}
