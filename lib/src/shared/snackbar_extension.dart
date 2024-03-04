import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:weather/src/core/constants/app_colors.dart';
import 'package:weather/src/core/constants/app_spacing.dart';
import 'package:weather/src/core/extensions/context_extension.dart';
import 'package:weather/src/core/extensions/extensions.dart';

extension BuildContextExtension on BuildContext {
  void showSnackBar({
    required String message,
    SnackBarType type = SnackBarType.success,
  }) {
    return showTopSnackBar(
      Overlay.of(this),
      switch (type) {
        SnackBarType.error => CustomSnackBar.error(
            message: message,
            backgroundColor: AppColors.kcError50Color,
            textStyle: TextStyle(
              fontSize: 12.fontSize,
              fontWeight: FontWeight.w500,
              color: AppColors.kcWhiteColor,
            ),
            borderRadius: BorderRadius.circular(8.radius),
          ),
        SnackBarType.success => CustomSnackBar.success(
            message: message,
            backgroundColor: AppColors.kcSuccess50Color,
            textStyle: TextStyle(
              fontSize: 12.fontSize,
              fontWeight: FontWeight.w500,
              color: AppColors.kcWhiteColor,
            ),
            borderRadius: BorderRadius.circular(8.radius),
          ),
        SnackBarType.info => UnconstrainedBox(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 12.height,
                horizontal: 16.width,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.radius),
                color: AppColors.kcWhiteColor,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message,
                    style: textTheme.displayLarge?.copyWith(
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kcBlackColor,
                    ),
                  ),
                  AppSpacing.horizontalSpaceMedium,
                  // SvgImageAsset(
                  //   AppAssetPath.check,
                  //   height: 20.radius,
                  //   width: 20.radius,
                  // ),
                ],
              ),
            ),
          ),
      },
    );
  }
}

enum SnackBarType {
  error,
  success,
  info,
}
