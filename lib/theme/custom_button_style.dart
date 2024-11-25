import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  /// Outline button style
  static ButtonStyle get outlineErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: theme.colorScheme.errorContainer,
        elevation: 4,
        padding: EdgeInsets.zero,
      );

  /// Text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        elevation: WidgetStateProperty.all<double>(0),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        side: WidgetStateProperty.all<BorderSide>(
          BorderSide(color: Colors.transparent),
        ));
}
