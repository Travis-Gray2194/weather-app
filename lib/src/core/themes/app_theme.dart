import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/src/core/constants/app_colors.dart';
import 'package:weather/src/core/extensions/extensions.dart';
import 'package:weather/src/gen/fonts.gen.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        fontFamily: FontFamily.capsuleSansText,
        scaffoldBackgroundColor: const Color(0xFFF6EDFF),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: AppColors.kcBlackColor,
            fontSize: 34.fontSize,
          ),
          displayMedium: TextStyle(
            color: AppColors.kcBlackColor,
            fontSize: 30.fontSize,
          ),
          displaySmall: TextStyle(
            color: AppColors.kcBlackColor,
            fontSize: 24.fontSize,
          ),
          bodyLarge: TextStyle(
            color: AppColors.kcBlackColor,
            fontSize: 18.fontSize,
          ),
          bodyMedium: TextStyle(
            color: AppColors.kcBlackColor,
            fontSize: 16.fontSize,
          ),
          bodySmall: TextStyle(
            color: AppColors.kcBlackColor,
            fontSize: 12.fontSize,
          ),
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          linearTrackColor: const Color(0xFFFAEDFF),
          linearMinHeight: 24.height,
          circularTrackColor: const Color(0xFF8A20D5),
          color: const Color(0xFF8A20D5),
          refreshBackgroundColor: const Color(0xFF8A20D5),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.kcWhiteColor,
          contentPadding: EdgeInsets.all(12.radius),
          labelStyle: TextStyle(
            fontSize: 14.fontSize,
            fontWeight: FontWeight.w400,
            color: AppColors.kcBlackColor,
          ),
          suffixStyle: TextStyle(
            fontSize: 14.fontSize,
            fontWeight: FontWeight.w500,
            color: AppColors.kcBlackColor,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.radius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.radius),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.kcError50Color,
            ),
            borderRadius: BorderRadius.circular(4.radius),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.radius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.radius),
          ),
        ),
        datePickerTheme: DatePickerThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.radius),
          ),
          headerBackgroundColor: const Color(0xFF8A20D5),
          dividerColor: const Color(0xFF8A20D5),
          backgroundColor: const Color(0xFF8A20D5),
          surfaceTintColor: const Color(0xFF8A20D5),
        ),
        appBarTheme: AppBarTheme(
          color: const Color(0xFFE2D3FA),
          elevation: 0,
          iconTheme: const IconThemeData(
            color: AppColors.kcWhiteColor,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          toolbarHeight: .1,
          titleTextStyle: TextStyle(
            fontSize: 22.fontSize,
            fontWeight: FontWeight.w500,
            color: AppColors.kcWhiteColor,
          ),
        ),
      );
}
