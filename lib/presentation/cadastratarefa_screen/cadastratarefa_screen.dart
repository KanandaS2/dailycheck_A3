// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_buttom_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/taskcategorylist_item_widget.dart';

// ignore_for_file: must_be_immutable
class CadastraTarefaScreen extends StatelessWidget {
  CadastraTarefaScreen({Key? key}) : super(key: key);

  final TextEditingController taskNameInputController = TextEditingController();
  final TextEditingController taskDateInputController = TextEditingController();
  final TextEditingController taskDescriptionInputController = TextEditingController();

  bool taskReminderCheckbox = false;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 14.h,
                top: 24.h,
                right: 14.h,
              ),
              child: Column(
                children: [
                  _buildTaskInputSection(
                    context,
                    title: "Nome da Tarefa",
                    inputBuilder: _buildTaskNameInput,
                  ),
                  SizedBox(height: 36.h),
                  _buildTaskInputSection(
                    context,
                    title: "Data da Tarefa",
                    inputBuilder: _buildTaskDateInput,
                  ),
                  SizedBox(height: 36.h),
                  _buildTaskInputSection(
                    context,
                    title: "Descrição da Tarefa",
                    inputBuilder: _buildTaskDescriptionInput,
                  ),
                  SizedBox(height: 36.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Categoria da Tarefa",
                            style: CustomTextStyles.titleMediumErrorContainer,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        _buildTaskCategoryList(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 36.h),
                  _buildTaskReminderCheckbox(context),
                  SizedBox(height: 36.h),
                  _buildCreateTaskButton(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section: AppBar
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppBarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 12.h),
        onTap: () {
          onTapArrowLeftOne(context);
        },
      ),
      centerTitle: true,
      title: AppBarTitle(
        text: "Adicione os Dados da sua Tarefa",
      ),
    );
  }

  /// Section: Task Input Section
  Widget _buildTaskInputSection(
    BuildContext context, {
    required String title,
    required Widget Function(BuildContext) inputBuilder,
  }) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: CustomTextStyles.titleMediumErrorContainer,
          ),
          SizedBox(height: 4.h),
          inputBuilder(context),
        ],
      ),
    );
  }

  /// Section: Task Name Input
  Widget _buildTaskNameInput(BuildContext context) {
    return CustomTextFormField(
      controller: taskNameInputController,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.fillGray,
      fillColor: appTheme.gray400,
    );
  }

  /// Section: Task Date Input
  Widget _buildTaskDateInput(BuildContext context) {
    return CustomTextFormField(
      controller: taskDateInputController,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.fillGray,
      fillColor: appTheme.gray400,
    );
  }

  /// Section: Task Description Input
  Widget _buildTaskDescriptionInput(BuildContext context) {
    return CustomTextFormField(
      controller: taskDescriptionInputController,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.fillGray,
      fillColor: appTheme.gray400,
    );
  }

  /// Section: Task Category List
  Widget _buildTaskCategoryList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 12.h,
        children: List.generate(
          3,
          (index) => TaskCategoryListItemWidget(),
        ),
      ),
    );
  }

  /// Section: Task Reminder Checkbox
  Widget _buildTaskReminderCheckbox(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10.h),
      child: CustomCheckboxButton(
        width: 316.h,
        text: "Criar lembrete para essa tarefa?",
        value: taskReminderCheckbox,
        isRightCheck: true,
        onChange: (value) {
          taskReminderCheckbox = value;
        },
      ),
    );
  }

  /// Section: Create Task Button
  Widget _buildCreateTaskButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Criar Tarefa",
      margin: EdgeInsets.symmetric(horizontal: 58.h),
    );
  }

  /// Section: Bottom Bar
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
    );
  }

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Tarefas:
        return AppRoutes.tarefasexibicaoInitialPage;
      case BottomBarEnum.Categoria:
        return "/";
      case BottomBarEnum.Lembrete:
        return "/";
      case BottomBarEnum.Ajustes:
        return "/";
      default:
        return "/";
    }
  }

  /// Back Navigation Handler
  void onTapArrowLeftOne(BuildContext context) {
    Navigator.pop(context);
  }
}
