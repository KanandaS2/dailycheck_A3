import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
  /// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColorMap = {
    "lightCode": LightCodeColors(),
  };

  /// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    "lightCode": ColorSchemes.lightCodeColorScheme,
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColorMap[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          shadowColor: colorScheme.errorContainer,
          elevation: 4,
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: appTheme.gray800,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.secondaryContainer,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.errorContainer.withOpacity(1),
          fontSize: 15.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 40.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 32.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 24.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: 13.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 20.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w900,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray800,
          fontSize: 14.fsize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0xFFAA998B),
    primaryContainer: Color(0xFF3A2F45),
    secondaryContainer: Color(0xFFB3B3B3),
    errorContainer: Color(0xFFB3B3B3),
    onPrimary: Color(0xFFFFFFFF),
    onPrimaryContainer: Color(0xFFFFFFFF),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // BlueGray
  Color get blueGray300 => Color(0xFFA9B9BA);
  Color get blueGray50 => Color(0xFFEFF1F5);
  Color get blueGray500 => Color(0xFF5B5F5F);
  Color get blueGray600 => Color(0xFF355B5F);

  // DeepPurple
  Color get deepPurple500 => Color(0xFF7650A4);
  Color get deepPurple600 => Color(0xFF6C4691);

  // Gray
  Color get gray400 => Color(0xFF9C9C4C);
  Color get gray800 => Color(0xFF382F45);
  Color get gray900 => Color(0xFF241F28);
}
