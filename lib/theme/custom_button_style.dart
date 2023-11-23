import 'dart:ui';
import 'package:eunbyul_s_application104/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientOnPrimaryContainerToRedDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(15.h),
        border: Border.all(
          color: appTheme.redA100,
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            appTheme.red300.withOpacity(0),
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
