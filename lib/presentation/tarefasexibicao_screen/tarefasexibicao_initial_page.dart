import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_floating_button.dart';
import 'widgets/tasklist_item_widget.dart';

class TarefasExibicaoInitialPage extends StatefulWidget {
  const TarefasExibicaoInitialPage({Key? key}) : super(key: key);

  @override
  TarefasExibicaoInitialPageState createState() =>
      TarefasExibicaoInitialPageState();
}

class TarefasExibicaoInitialPageState
    extends State<TarefasExibicaoInitialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 765.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 38.h,
                    right: 14.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "Suas Tarefas",
                          style: CustomTextStyles.titleLargeGray900,
                        ),
                      ),
                      SizedBox(height: 34.h),
                      _buildTaskList(context),
                      SizedBox(height: 116.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _buildAddTaskButton(context),
        ],
      ),
    );
  }
}

/// Section Widget
Widget _buildTaskList(BuildContext context) {
  return Expanded(
    child: ListView.separated(
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 30.h,
        );
      },
      itemCount: 6,
      itemBuilder: (context, index) {
        return TaskListItemWidget();
      },
    ),
  );
}

/// Section Widget
Widget _buildAddTaskButton(BuildContext context) {
  return CustomFloatingButton(
    height: 50,
    width: 50,
    alignment: Alignment.bottomRight,
    child: Icon(
      Icons.add,
    ),
  );
}
