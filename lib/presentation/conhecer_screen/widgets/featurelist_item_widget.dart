import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class FeaturesListItemWidget extends StatelessWidget {
  const FeaturesListItemWidget({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgListaDeAfazeres,
            height: 62.h,
            width: 62.h,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Container(
              height: 68.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Rapidez, Facilidade e Praticidade",
                      style: CustomTextStyles.titleMediumGray800Bold,
                    ),
                  ),
                  Text(
                    "Criação, edição e exclusão de tarefas \nde forma simples e rápida.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.47,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
