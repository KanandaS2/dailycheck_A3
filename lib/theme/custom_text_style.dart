import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Label text style
  static TextStyle get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );

  // Title text style
  static TextStyle get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fsize,
      );

  static TextStyle get titleMediumBlack => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w900,
      );

  static TextStyle get titleMediumBlack_1 =>
      theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w900,
      );

  static TextStyle get titleMediumDeeppurple600 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurple600,
      );

  static TextStyle get titleMediumErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 17.5fsize,
      );

  static TextStyle get titleMediumGray800 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w900,
      );

  static TextStyle get titleMediumGray800Bold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 17.5fsize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 17.5fsize,
        fontWeight: FontWeight.w900,
      );

  static TextStyle get titleMediumOnPrimaryContainerBlack =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w900,
      );

  static TextStyle get titleMediumOnPrimaryContainerBlack19 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 19.5size,
        fontWeight: FontWeight.w900,
      );

  static TextStyle get titleSmallErrorContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 15.5size,
      );

  static TextStyle get titleSmallErrorContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 15.fsize,
        fontWeight: FontWeight.w900,
      );

  static TextStyle get titleSmallErrorContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
}
